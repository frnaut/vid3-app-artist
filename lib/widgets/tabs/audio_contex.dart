import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:vid3_artist/widgets/player/cbx.dart';
import 'package:vid3_artist/widgets/player/drop_down.dart';
import 'package:vid3_artist/widgets/player/tab_content.dart';
import 'package:vid3_artist/widgets/player/tabs.dart';
import 'package:vid3_artist/widgets/utils.dart';

class AudioContextTab extends StatefulWidget {
  final AudioPlayer player;

  const AudioContextTab({
    required this.player,
    super.key,
  });

  @override
  AudioContextTabState createState() => AudioContextTabState();
}

class AudioContextTabState extends State<AudioContextTab>
    with AutomaticKeepAliveClientMixin<AudioContextTab> {
  static GlobalAudioScope get _global => AudioPlayer.global;

  AudioPlayer get player => widget.player;

  /// Set config for all platforms
  AudioContextConfig audioContextConfig = AudioContextConfig();

  /// Set config for each platform individually
  AudioContext audioContext = AudioContext();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        const ListTile(title: Text('Audio Context')),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.undo),
              label: const Text('Reset'),
              onPressed: () => updateConfig(AudioContextConfig()),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.public),
              label: const Text('Global'),
              onPressed: () => _global.setAudioContext(audioContext),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.looks_one),
              label: const Text('Local'),
              onPressed: () => player.setAudioContext(audioContext),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Expanded(
          child: Tabs(
            tabs: [
              TabData(
                key: 'contextTab-android',
                label: 'Android',
                content: _androidTab(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void updateConfig(AudioContextConfig newConfig) {
    try {
      final context = newConfig.build();
      setState(() {
        audioContextConfig = newConfig;
        audioContext = context;
      });
    } on AssertionError catch (e) {
      toast(e.message.toString());
    }
  }

  void updateAudioContextAndroid(AudioContextAndroid contextAndroid) {
    setState(() {
      audioContext = audioContext.copy(android: contextAndroid);
    });
  }

  void updateAudioContextIOS(AudioContextIOS Function() buildContextIOS) {
    try {
      final context = buildContextIOS();
      setState(() {
        audioContext = audioContext.copy(iOS: context);
      });
    } on AssertionError catch (e) {
      toast(e.message.toString());
    }
  }

  Widget _androidTab() {
    return TabContent(
      children: [
        Cbx(
          'isSpeakerphoneOn',
          value: audioContext.android.isSpeakerphoneOn,
          ({value}) => updateAudioContextAndroid(
            audioContext.android.copy(isSpeakerphoneOn: value),
          ),
        ),
        Cbx(
          'stayAwake',
          value: audioContext.android.stayAwake,
          ({value}) => updateAudioContextAndroid(
            audioContext.android.copy(stayAwake: value),
          ),
        ),
        LabeledDropDown<AndroidContentType>(
          label: 'contentType',
          key: const Key('contentType'),
          options: {for (final e in AndroidContentType.values) e: e.name},
          selected: audioContext.android.contentType,
          onChange: (v) => updateAudioContextAndroid(
            audioContext.android.copy(contentType: v),
          ),
        ),
        LabeledDropDown<AndroidUsageType>(
          label: 'usageType',
          key: const Key('usageType'),
          options: {for (final e in AndroidUsageType.values) e: e.name},
          selected: audioContext.android.usageType,
          onChange: (v) => updateAudioContextAndroid(
            audioContext.android.copy(usageType: v),
          ),
        ),
        LabeledDropDown<AndroidAudioFocus?>(
          key: const Key('audioFocus'),
          label: 'audioFocus',
          options: {for (final e in AndroidAudioFocus.values) e: e.name},
          selected: audioContext.android.audioFocus,
          onChange: (v) => updateAudioContextAndroid(
            audioContext.android.copy(audioFocus: v),
          ),
        ),
        LabeledDropDown<AndroidAudioMode>(
          key: const Key('audioMode'),
          label: 'audioMode',
          options: {for (final e in AndroidAudioMode.values) e: e.name},
          selected: audioContext.android.audioMode,
          onChange: (v) => updateAudioContextAndroid(
            audioContext.android.copy(audioMode: v),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

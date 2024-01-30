import 'package:flutter/material.dart';
import 'package:vid3_artist/widgets/custom_appbar.dart';
import 'package:vid3_artist/widgets/custom_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: getAppBar(),
        drawer: getDrawer(context),
        body: Column(
          children: [
            header(),
            plays(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color.fromRGBO(37, 216, 101, 0.8);
                        }
                        return const Color.fromRGBO(37, 216, 101, 1);
                      }),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      "Vincular Spotify",
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  width: 25,
                  child: Text(
                    "|",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color.fromRGBO(254, 75, 27, 0.8);
                        }
                        return const Color.fromRGBO(254, 75, 27, 1);
                      }),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      "Vincular Payoneer",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container plays() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.music_note_rounded),
              Text(
                "100,230",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
          Text(
            "Reproducciones",
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.7)),
          )
        ],
      ),
    );
  }

  Container header() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/images/avatar.jpg", fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Column(
            children: [
              Text(
                "Bad Bunny",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "Puerto Rico",
                style: TextStyle(
                    fontSize: 15, color: Color.fromRGBO(255, 255, 255, 0.5)),
              )
            ],
          )
        ],
      ),
    );
  }
}

// 
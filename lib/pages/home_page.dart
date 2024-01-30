import 'package:flutter/material.dart';
import 'package:vid3_artist/widgets/barchart/bar_chart.dart';
import 'package:vid3_artist/widgets/custom_appbar.dart';
import 'package:vid3_artist/widgets/custom_drawer.dart';
import 'package:vid3_artist/widgets/most_popular_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: getAppBar(),
      drawer: getDrawer(context),
      body: const SingleChildScrollView(
        child: Column(children: [
          BarChart(),
          MostPopularCard(),
        ]),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:vid3_artist/widgets/barchart/bar_chart.dart';
import 'package:vid3_artist/widgets/custom_appbar.dart';
import 'package:vid3_artist/widgets/most_popular_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          CustomAppBar(),
          BarChart(),
          MostPopularCard(),
        ]),
      ),
    ));
  }
}

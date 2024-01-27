import 'package:flutter/material.dart';
import 'package:vid3_artist/widgets/box.dart';
import 'package:vid3_artist/widgets/most_popular_item.dart';

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Box(
        child: Column(children: [
          const Row(
            children: [
              Text(
                "Canciones mas escuchadas",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(255, 255, 255, 0.7)),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "203,001",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 0, 252, 1),
                    ),
                  ),
                  Text(
                    "Reproducciones total",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 255, 255, 0.5)),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Column(
              children: [
                MostPopularItem(),
                MostPopularItem(),
                MostPopularItem(),
                MostPopularItem(),
                MostPopularItem()
              ],
            ),
          )
        ]),
      ),
    );
  }
}

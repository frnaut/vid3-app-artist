import 'package:flutter/material.dart';
import 'package:vid3_artist/widgets/barchart/bar.dart';
import 'package:vid3_artist/widgets/box.dart';

class BarChart extends StatelessWidget {
  const BarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Box(
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: const Row(
            children: [
              Column(
                children: [
                  Text(
                    "\$100,021.00",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 0, 252, 1),
                    ),
                  ),
                  Text(
                    "\$ Total Generado",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Spacer()
            ],
          ),
        ),
        const Row(
          children: [
            Bar(text: "Ene", value: 0.1),
            Bar(text: "Feb", value: 0.3),
            Bar(text: "Mar", value: 0.6),
            Bar(text: "Abr", value: 0.4),
            Bar(text: "May", value: 0.7),
            Bar(text: "Jun", value: 0.9),
            Bar(text: "Jul", value: 0.6),
            Bar(text: "Ago", value: 0.4),
            Bar(text: "Sep", value: 0.5),
            Bar(text: "Oct", value: 0.6),
            Bar(text: "Nov", value: 0.7),
            Bar(text: "Dic", value: 0.9),
          ],
        )
      ]),
    );
  }
}

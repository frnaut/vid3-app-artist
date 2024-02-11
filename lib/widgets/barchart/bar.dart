import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final String text;
  final double value;

  const Bar({super.key, this.text = "Ene", this.value = 10});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width - 30;
    final containerSizeWidth = screenSize * 0.07;
    const containerSizeHeight = 200.0;
    const containerBarSizeHeight = containerSizeHeight * 0.8;

    return Container(
      width: containerSizeWidth,
      margin: EdgeInsets.symmetric(horizontal: screenSize * 0.005),
      height: containerSizeHeight,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(children: [
        Stack(
          children: [
            Center(
              child: Container(
                width: containerSizeWidth * 0.5,
                height: containerBarSizeHeight,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(222, 223, 224, 1),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: containerBarSizeHeight * (1 - value),
                  ),
                  Container(
                    width: containerSizeWidth * 0.5,
                    height: containerBarSizeHeight * value,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 0, 252, 1),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            )
          ],
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 10),
        )
      ]),
    );
  }
}

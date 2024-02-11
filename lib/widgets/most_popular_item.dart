import 'package:flutter/material.dart';

class MostPopularItem extends StatelessWidget {
  const MostPopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    final sreenSize = MediaQuery.of(context).size.width - 70;
    final imageSize = sreenSize * 0.10;
    final textSize = sreenSize * 0.5;
    final counterSize = sreenSize - imageSize - textSize;

    return GestureDetector(
      onTap: () => {Navigator.pushNamed(context, "/player")},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(children: [
          Container(
              margin: const EdgeInsets.only(right: 10),
              width: imageSize,
              height: imageSize,
              child: Image.asset("assets/images/album_placeholder.jpg")),
          Container(
              margin: const EdgeInsets.only(right: 10),
              width: textSize,
              child: const Text(
                "Me Porto Bonito - Bad Bunny, Chencho Corleone",
                softWrap: true,
                style: TextStyle(fontSize: 12),
              )),
          SizedBox(
              width: counterSize,
              child: const Text(
                "103,000",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.end,
              ))
        ]),
      ),
    );
  }
}

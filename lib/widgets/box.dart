import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget child;

  const Box({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 20,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.015),
            borderRadius: BorderRadius.circular(20)),
        child: child);
  }
}

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: MediaQuery.of(context).size.width,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset("assets/images/logo.png"),
          const Text(
            "Bad Bunny",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const CircleAvatar(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

AppBar getAppBar() {
  return AppBar(
      title: SizedBox(
        width: 100,
        height: 100,
        child: Image.asset("assets/images/logo.png"),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(34, 34, 34, 1),
      actions: [
        CircleAvatar(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/images/avatar.jpg",
                    fit: BoxFit.cover))),
      ]);
}

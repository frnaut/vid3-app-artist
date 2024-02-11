import 'package:flutter/material.dart';
import 'package:vid3_artist/pages/home_page.dart';
import 'package:vid3_artist/pages/login_page.dart';
import 'package:vid3_artist/pages/profile_page.dart';
import 'package:vid3_artist/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      initialRoute: "/login",
      routes: {
        "/": (context) => const HomePage(),
        "/profile": (context) => const ProfilePage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}

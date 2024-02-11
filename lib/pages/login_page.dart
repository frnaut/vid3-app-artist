import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: ListView(children: [
            SizedBox(
              width: screenSize * 0.8,
              height: screenSize * 0.8,
              child: Image.asset('assets/images/logo.png'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(labelText: "Email"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Color.fromRGBO(255, 0, 252, 0.8);
                    }
                    return const Color.fromRGBO(255, 0, 252, 1);
                  }),
                ),
                onPressed: () => {Navigator.pushNamed(context, "/")},
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Color.fromRGBO(37, 216, 101, 0.8);
                    }
                    return const Color.fromRGBO(37, 216, 101, 1);
                  }),
                ),
                onPressed: () => {Navigator.pushNamed(context, "/")},
                child: const Text(
                  "Spotify",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Color.fromRGBO(255, 255, 255, 0.9);
                    }
                    return const Color.fromRGBO(255, 255, 255, 1);
                  }),
                ),
                onPressed: () => {Navigator.pushNamed(context, "/")},
                child: const Text(
                  "Google",
                  style: TextStyle(color: Colors.blueAccent),
                )),
          ]),
        ),
      ),
    ));
  }
}

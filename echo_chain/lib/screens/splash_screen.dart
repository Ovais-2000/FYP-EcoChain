import 'package:echo_chain/screens/login_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff2E7D32), Colors.lightGreenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        const Center(
          child: SizedBox(
            height: 150,
            width: 150,
            child: Image(image: AssetImage("images/splashWhite.png")),
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image(image: AssetImage("images/splashLogo.png")),
            ),
          ),
      ],
    ));
  }
}

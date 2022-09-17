import 'dart:async';
// import 'dart:ui';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, "/getstarted");
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.yellow.shade700,
                  Colors.greenAccent,
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Image.asset(
                "assets/logo1.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 600, 10, 10),
              child: Center(
                child: Image.asset(
                  "assets/logo2.png",
                  fit: BoxFit.fitHeight,
                  width: 155,
                  height: 150,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_tube/Screen/Signin.dart';
import 'package:islamic_tube/Screen/Splash_Screen.dart';
import 'package:islamic_tube/Screen/home.dart';
import 'package:islamic_tube/Screen/register.dart';
import 'Screen/getstarted.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Flutter YouTube UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(selectedItemColor: Colors.white),
      ),
      routes: {
        "/": (context) => SplashScreen(),
        "/getstarted": (context) => const getstarted(),
        "/signin": (context) => const MyLogin(),
        "/register": (context) => const register(),
        "/home": (context) => const home(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:steam_and_robotics_hub/login_page.dart';
import 'package:steam_and_robotics_hub/onboarding_page.dart';
import 'package:steam_and_robotics_hub/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

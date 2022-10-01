import 'package:flutter/material.dart';
import 'package:radio_set/configuration/colors.dart';
import 'package:radio_set/presentation/feature/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      home: const SplashScreen(),
    );
  }
}

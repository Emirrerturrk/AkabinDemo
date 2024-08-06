import 'package:akabin_demo/screens/onboarding_screen.dart';
import 'package:akabin_demo/theme/dark_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DarkTheme().theme,
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}

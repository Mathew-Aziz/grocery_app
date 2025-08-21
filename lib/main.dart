import 'package:flutter/material.dart';
import 'package:grocery_app_week2/core/utils/themes.dart';
import 'package:grocery_app_week2/features/auth/location_screen.dart';
import 'package:grocery_app_week2/features/auth/login_screen.dart';
import 'package:grocery_app_week2/features/auth/signup_screen.dart';
import 'package:grocery_app_week2/features/auth/welcome_screen.dart';
import 'package:grocery_app_week2/features/home/pages/find_products.dart';
import 'package:grocery_app_week2/features/home/pages/home_screen.dart';
import 'package:grocery_app_week2/features/home/pages/main_screen.dart';
import 'package:grocery_app_week2/features/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nectar',
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

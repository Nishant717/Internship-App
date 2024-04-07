// ignore_for_file: prefer_const_constructors

import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/login_screen.dart';
import 'package:app/screens/otp.dart';
import 'package:app/screens/signup.dart';
import 'package:app/screens/splash_screen_1.dart';
import 'package:app/screens/splash_screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/HomeScreen",
      routes: {
        "/SplashScreen1": (context) => SplashScreen1(),
        "/SplashScreen2": (context) => SplashScreen2(),
        "/login": (context) => LoginScreen(),
        "/signup": (context) => SignupScreen(),
        "/otp": (context) => OtpScreen(
              phoneNumber: '',
            ),
        "/HomeScreen": (context) => HomeScreen()
      },
    );
  }
}

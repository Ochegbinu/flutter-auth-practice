import 'package:flutter/material.dart';
import 'package:untitled1/signup.dart';
import 'package:untitled1/login.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        ScreenTwo.id: (context) => const ScreenTwo(),
        Dashboard.id: (context) => const Dashboard(),
      },
    );
  }
}

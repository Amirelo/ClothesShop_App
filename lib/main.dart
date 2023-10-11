import 'package:clothes_shop/src/screens/auth/RegisterScreen.dart';
import 'package:clothes_shop/src/screens/auth/SignInScreen.dart';
import 'package:clothes_shop/src/screens/auth/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Center(
      child: SplashScreen()
    ))));
  }
}
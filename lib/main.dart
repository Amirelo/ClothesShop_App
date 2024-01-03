import 'package:clothes_shop/src/screens/auth/sign_in_screen.dart';
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
            resizeToAvoidBottomInset: false,
            body: SafeArea(child: Center(child: SignInScreen()))));
  }
}

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              width: 72,
              height: 72,
              child: Image.asset('assets/images/logo_blue.png'),
            )
            
          ),
        ),
      ),
    ));
  }
}

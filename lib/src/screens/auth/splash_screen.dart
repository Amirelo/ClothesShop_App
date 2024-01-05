import 'dart:async';

import 'package:clothes_shop/src/screens/auth/sign_in_screen.dart';
import 'package:clothes_shop/src/widgets/custom_scafford.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void handleTimeOut() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SignInScreen()));
    }

    Timer scheduleSplashTimer([int milliseconds = 1000]) =>
        Timer(Duration(milliseconds: milliseconds), handleTimeOut);

    scheduleSplashTimer(1500);

    return (CustomScafford(
      backgroundColor: Colors.blue,
      body: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            width: 72,
            height: 72,
            child: Image.asset('assets/images/logo_blue.png'),
          )),
    ));
  }
}

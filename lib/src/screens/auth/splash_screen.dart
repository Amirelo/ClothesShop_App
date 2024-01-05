import 'dart:async';

import 'package:clothes_shop/src/screens/auth/sign_in_screen.dart';
import 'package:clothes_shop/src/widgets/custom_image.dart';
import 'package:clothes_shop/src/widgets/custom_scafford.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void handleTimeOut() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const SignInScreen()));
    }

    Timer scheduleSplashTimer([int milliseconds = 1000]) =>
        Timer(Duration(milliseconds: milliseconds), handleTimeOut);

    scheduleSplashTimer(1500);

    return (const CustomScafford(
      backgroundColor: Colors.blue,
      body: CustomImage(
        src: 'assets/images/logo_blue.png',
        width: 72,
        height: 72,
        marginBottom: 16,
        borderRadius: 16,
        type: "asset",
      ),
    ));
  }
}

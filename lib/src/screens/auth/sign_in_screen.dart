import 'package:clothes_shop/src/colors/theme_default.dart';
import 'package:clothes_shop/src/widgets/CustomButton.dart';
import 'package:clothes_shop/src/widgets/CustomText.dart';
import 'package:clothes_shop/src/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImage(
          src: 'assets/images/logo_white.png',
          width: 72,
          height: 72,
          marginTop: 100,
          marginBottom: 16,
          borderRadius: 16,
          type: "asset",
        ),
        CustomText(
          text: "Welcome to Lafyuu",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          textColor: ThemeDefault().textColor,
        ),
        CustomText(
          text: "Sign in to continue",
          fontSize: 12,
          textColor: ThemeDefault().secondaryTextColor,
          marginBottom: 28,
        ),
        const TextField(
          decoration: InputDecoration(labelText: "Your email"),
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(labelText: "Password"),
        ),
        const CustomButton(onPressed: _buttonAction, text: "Sign in"),
        CustomText(
          text: "OR",
          textColor: ThemeDefault().secondaryTextColor,
        ),
        const CustomButton(onPressed: _buttonAction, text: "Login with Google"),
        const CustomButton(
            onPressed: _buttonAction, text: "Login with Facebook"),
        CustomText(
          text: "Forgot password",
          textColor: ThemeDefault().primaryColor,
        ),
        Row(
          children: [
            const CustomText(text: "Don't have an account? "),
            CustomText(
              text: 'Register',
              textColor: ThemeDefault().primaryColor,
            )
          ],
        ),
      ],
    );
  }
}

_buttonAction() {}

import 'package:clothes_shop/src/colors/theme_default.dart';
import 'package:clothes_shop/src/screens/main/home_screen.dart';
import 'package:clothes_shop/src/widgets/custom_button.dart';
import 'package:clothes_shop/src/widgets/custom_input.dart';
import 'package:clothes_shop/src/widgets/custom_text.dart';
import 'package:clothes_shop/src/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onSignInPressed() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    }

    return Scaffold(
      body: Column(
        children: [
          const CustomImage(
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
          const CustomInput(
            placeholder: "Email",
            icon: Icons.email,
          ),
          const CustomInput(
            placeholder: "Password",
            icon: Icons.lock,
            marginBottom: 12,
          ),
          CustomButton(
            onPressed: onSignInPressed,
            text: "Sign in",
            backgroundColor: ThemeDefault().primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Divider(),
                ),
                CustomText(
                  text: "OR",
                  textColor: ThemeDefault().secondaryTextColor,
                  fontWeight: FontWeight.bold,
                  marginBottom: 0,
                  marginLeft: 16,
                  marginRight: 16,
                ),
                const Expanded(child: Divider()),
              ],
            ),
          ),
          const CustomButton(
              onPressed: _buttonAction, text: "Login with Google"),
          const CustomButton(
            onPressed: _buttonAction,
            text: "Login with Facebook",
            marginBottom: 16,
          ),
          CustomText(
            text: "Forgot password?",
            textColor: ThemeDefault().primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(text: "Don't have an account? "),
              CustomText(
                text: 'Register',
                textColor: ThemeDefault().primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              )
            ],
          ),
        ],
      ),
    );
  }
}

_buttonAction() {}

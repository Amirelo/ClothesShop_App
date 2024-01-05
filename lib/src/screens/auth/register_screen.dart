import 'package:clothes_shop/src/colors/theme_default.dart';
import 'package:clothes_shop/src/widgets/custom_button.dart';
import 'package:clothes_shop/src/widgets/custom_image.dart';
import 'package:clothes_shop/src/widgets/custom_input.dart';
import 'package:clothes_shop/src/widgets/custom_scafford.dart';
import 'package:clothes_shop/src/widgets/custom_text.dart';
import 'package:clothes_shop/src/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onSignInPressed() {
      Navigator.pop(context);
    }

    void onSignUpPressed() {}

    return CustomScafford(
      body: (Column(
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
            text: "Let's get started",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            textColor: ThemeDefault().textColor,
          ),
          CustomText(
            text: "Create a new account",
            fontSize: 12,
            textColor: ThemeDefault().secondaryTextColor,
            marginBottom: 28,
          ),
          const CustomInput(
            placeholder: "Full Name",
            icon: Icons.person,
          ),
          const CustomInput(
            placeholder: "Email",
            icon: Icons.email,
          ),
          const CustomInput(
            placeholder: "Password",
            icon: Icons.lock,
          ),
          const CustomInput(
            placeholder: "Confirm Password",
            icon: Icons.lock,
            marginBottom: 12,
          ),
          CustomButton(
            onPressed: onSignUpPressed,
            text: "Sign Up",
            backgroundColor: ThemeDefault().primaryColor,
            marginBottom: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomText(text: "Already have an account? "),
              CustomTextButton(
                text: 'Sign In',
                onPressed: onSignInPressed,
                textColor: ThemeDefault().primaryColor,
              )
            ],
          ),
        ],
      )),
    );
  }
}

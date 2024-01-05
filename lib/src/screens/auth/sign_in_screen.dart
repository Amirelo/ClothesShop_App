import 'package:clothes_shop/src/colors/theme_default.dart';
import 'package:clothes_shop/src/screens/auth/forgot_password.dart';
import 'package:clothes_shop/src/screens/auth/register_screen.dart';
import 'package:clothes_shop/src/screens/main/home_screen.dart';
import 'package:clothes_shop/src/widgets/custom_button.dart';
import 'package:clothes_shop/src/widgets/custom_input.dart';
import 'package:clothes_shop/src/widgets/custom_scafford.dart';
import 'package:clothes_shop/src/widgets/custom_text.dart';
import 'package:clothes_shop/src/widgets/custom_image.dart';
import 'package:clothes_shop/src/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onSignInPressed() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    }

    void onRegisterPressed() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const RegisterScreen()));
    }

    void onForgotPasswordPressed() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ForgotPassword()));
    }

    return CustomScafford(
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
            text: "Sign In",
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
          CustomTextButton(
            text: "Forgot password?",
            textColor: ThemeDefault().primaryColor,
            onPressed: onForgotPasswordPressed,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomText(text: "Don't have an account? "),
              CustomTextButton(
                text: 'Register',
                onPressed: onRegisterPressed,
                textColor: ThemeDefault().primaryColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}

_buttonAction() {}

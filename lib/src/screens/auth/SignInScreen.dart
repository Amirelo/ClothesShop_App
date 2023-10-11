import 'package:clothes_shop/src/colors/ThemeDefault.dart';
import 'package:clothes_shop/src/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 100),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                  width: 72,
                  height: 72,
                  child: Image.asset('assets/images/logo_white.png')),
            )),
        CustomText(text: "Welcome to Lafyuu", paddingTop: 16, fontSize: 16, textColor: ThemeDefault().primaryColor,),
        CustomText(text: "Sign in to continue", paddingTop: 8, textColor: ThemeDefault().secondaryTextColor,),
        const TextField(
          decoration: InputDecoration(labelText: "Your email"),
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(labelText: "Password"),
        ),
        const ElevatedButton(onPressed: null, child: Text("Sign in")),
        CustomText(text: "OR", textColor: ThemeDefault().secondaryTextColor,),
        const ElevatedButton(onPressed: null, child: Text("Login with Google")),
        const ElevatedButton(
            onPressed: null, child: Text("Login with Facebook")),
        const Text("Forgot password"),
        const Text("Don't have an account? Register"),
      ],
    );
  }
}

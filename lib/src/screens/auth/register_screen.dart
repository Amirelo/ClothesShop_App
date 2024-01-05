import 'package:clothes_shop/src/widgets/custom_scafford.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onSignInPressed() {
      Navigator.pop(context);
    }

    return CustomScafford(
      body: (Column(
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
          const Text("Let's get started"),
          const Text("Create a new account"),
          const TextField(decoration: InputDecoration(labelText: "Full name")),
          const TextField(decoration: InputDecoration(labelText: "Your email")),
          const TextField(decoration: InputDecoration(labelText: "Password")),
          const TextField(
              decoration: InputDecoration(labelText: "Confirm password")),
          ElevatedButton(
              onPressed: onSignInPressed, child: const Text("Sign up")),
          const Text("Have an account? Sign in")
        ],
      )),
    );
  }
}

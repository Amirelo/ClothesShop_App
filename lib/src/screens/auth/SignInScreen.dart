import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: SizedBox(
                      width: 72,
                      height: 72,
                      child: Image.asset('assets/images/logo_white.png')
                    ),
                  )),
                  const Text("Welcome to Lafyuu"),
                  const Text("Sign in to continue"),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Your email"
                    ),
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password"
                    ),
                  ),
                  const ElevatedButton(onPressed: null, child: Text("Sign in")),
                  const Text("OR"),
                  const ElevatedButton(onPressed: null, child: Text("Login with Google")),
                  const ElevatedButton(onPressed: null, child: Text("Login with Facebook")),
                  const Text("Forgot password"),
                  const Text("Don't have an account? Register"),
            ],
          ));
  }
}

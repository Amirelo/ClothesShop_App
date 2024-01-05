import 'package:clothes_shop/src/widgets/custom_scafford.dart';
import 'package:clothes_shop/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScafford(
        body: Column(children: [(CustomText(text: "Forgot password screen"))]));
  }
}

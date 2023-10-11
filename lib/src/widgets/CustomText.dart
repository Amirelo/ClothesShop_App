import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  final String text;
  final String textColor;
  const CustomText({super.key, required this.text, this.textColor = ""});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
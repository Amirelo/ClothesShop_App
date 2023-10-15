import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final bool obscureText;
  final String placeholder;

  final double width;
  final double height;

  final double marginHorizontal;
  final double marginTop;
  final double marginBottom;

  final double borderRadius;

  const CustomInput(
      {super.key,
      this.obscureText = false,
      this.placeholder = "placeholder",
      this.width = double.infinity,
      this.height = double.infinity,
      this.marginHorizontal = 0,
      this.marginTop = 0,
      this.marginBottom = 0,
      this.borderRadius = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: marginTop,
          bottom: marginBottom,
          left: marginHorizontal,
          right: marginHorizontal),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        child: SizedBox(
          width: width,
          height: height,
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              labelText: placeholder,
            ),
          ),
        ),
      ),
    );
  }
}

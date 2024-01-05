import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double marginTop;
  final double marginBottom;
  final double marginLeft;
  final double marginRight;

  final FontWeight fontWeight;
  final double fontSize;

  const CustomText(
      {super.key,
      required this.text,
      this.textColor = const Color(0xff212121),
      this.marginTop = 0,
      this.marginBottom = 8,
      this.marginLeft = 0,
      this.marginRight = 0,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 14});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: marginTop,
          left: marginLeft,
          bottom: marginBottom,
          right: marginRight),
      child: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
            letterSpacing: 0.5),
      ),
    );
  }
}

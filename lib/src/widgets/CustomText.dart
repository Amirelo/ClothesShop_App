import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int textColor;
  final double paddingTop;
  final double paddingBottom;
  final double paddingLeft;
  final double paddingRight;

  final FontWeight fontWeight;
  final double fontSize;
  
  const CustomText(
      {super.key,
      required this.text,
      this.textColor = 0xff212121,
      this.paddingTop = 0,
      this.paddingBottom = 0,
      this.paddingLeft = 0,
      this.paddingRight = 0,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 14});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: paddingTop,
          left: paddingLeft,
          bottom: paddingBottom,
          right: paddingRight),
      child: Text(
        text,
        style: TextStyle(
          color: Color(textColor), 
          fontWeight: fontWeight,
          fontSize: fontSize,
          ),
      ),
    );
  }
}

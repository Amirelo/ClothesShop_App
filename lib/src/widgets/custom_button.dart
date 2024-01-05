import 'package:clothes_shop/src/colors/theme_default.dart';
import 'package:clothes_shop/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final Color backgroundColor;
  final double width;
  final double height;
  final double borderRadius;

  final double marginTop;
  final double marginBottom;
  final double marginHorizontal;

  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.backgroundColor = const Color(0xffFFFFFF),
      this.width = double.infinity,
      this.height = double.maxFinite,
      this.borderRadius = 5,
      this.marginTop = 0,
      this.marginBottom = 8,
      this.marginHorizontal = 0});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: marginTop,
          bottom: marginBottom,
          left: marginHorizontal,
          right: marginHorizontal),
      child: SizedBox(
        width: width != double.infinity
            ? width
            : MediaQuery.of(context).size.width * 0.9,
        height: 56,
        child: FractionallySizedBox(
          child: (ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shadowColor: backgroundColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius))),
              child: CustomText(
                text: text,
                marginBottom: 0,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                textColor: backgroundColor == ThemeDefault().backgroundColor
                    ? ThemeDefault().textColor
                    : ThemeDefault().backgroundColor,
              ))),
        ),
      ),
    );
  }
}

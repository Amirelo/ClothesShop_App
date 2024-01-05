import 'package:clothes_shop/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function()? onPressed;
  const CustomTextButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return (TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const Size(0, 0)),
      child: CustomText(
        text: text,
        textColor: textColor,
        fontWeight: FontWeight.bold,
      ),
    ));
  }
}

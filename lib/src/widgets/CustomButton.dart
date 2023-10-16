import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final Function() onPressed;
  final String text;
  final Color backgroundColor;
  final double width;
  final double height;
  final double borderRadius;

  final double marginTop;
  final double marginBottom;
  final double marginHorizontal;

  const CustomButton({
    super.key, 
    required this.onPressed, 
    required this.text,

    this.backgroundColor = const Color(0xffFFFFFF),
    
    this.width = double.infinity,
    this.height = double.maxFinite,
    this.borderRadius = 0,

    this.marginTop = 0,
    this.marginBottom = 0,
    this.marginHorizontal = 0
    });
  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        left: marginHorizontal,
        right: marginHorizontal
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: SizedBox(
          width: width,
          height: height,
          child: (
            ElevatedButton(
              onPressed: onPressed, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
              ), 
              child: Text(text),)
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final Function() onPressed;
  final String text;
  final Color backgroundColor;
  final double width;
  final double height;

  const CustomButton({
    super.key, 
    required this.onPressed, 
    required this.text,

    this.backgroundColor = const Color(0xffFFFFFF),
    
    this.width = double.infinity,
    this.height = double.infinity
    });
  @override
  Widget build(BuildContext context) {
    return
    ClipRRect(
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
    );
  }
}
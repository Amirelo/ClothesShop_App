import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String src;
  final String type;
  final double width;
  final double height;
  final double borderRadius;

  final double marginTop;
  final double marginBottom;
  final double marginHorizontal;

  const CustomImage(
      {super.key,
      required this.src,
      this.type = "asset",
      this.width = 100,
      this.height = 100,
      this.borderRadius = 0,
      this.marginTop = 0,
      this.marginBottom = 0,
      this.marginHorizontal = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: marginTop,
          bottom: marginBottom,
          left: marginHorizontal,
          right: marginHorizontal),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: SizedBox(
            width: width,
            height: height,
            child: type == "asset" ? Image.asset(src) : Image.network(src)),
      ),
    );
  }
}

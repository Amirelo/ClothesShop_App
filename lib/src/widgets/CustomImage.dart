import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String src;
  final int type;
  final double width;
  final double height;
  final double borderRadius;

  final double marginTop;
  final double marginBottom;
  final double marginHorizontal;

  const CustomImage(
      {super.key,
      required this.src,
      required this.type,
      this.width = double.infinity,
      this.height = double.maxFinite,
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
        right: marginHorizontal
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: SizedBox(
          width: width,
          height: height,
          child: type == 0 ? Image.asset(src) : Image.network(src)
          ) ,
      ),
    );
  }
}

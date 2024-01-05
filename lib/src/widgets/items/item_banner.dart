import 'package:clothes_shop/src/colors/theme_default.dart';
import 'package:clothes_shop/src/widgets/custom_image.dart';
import 'package:clothes_shop/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ItemBanner extends StatelessWidget {
  final double paddingTop;
  final String text;
  const ItemBanner({super.key, this.paddingTop = 16.0, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: (Stack(
        children: [
          CustomImage(
            src: 'assets/images/Promotion_Image.png',
            width: MediaQuery.of(context).size.width * 0.9,
            height: 206,
          ),
          Positioned(
            left: 40,
            top: 32,
            child: CustomText(
              text: text,
              textColor: ThemeDefault().backgroundColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )),
    );
  }
}

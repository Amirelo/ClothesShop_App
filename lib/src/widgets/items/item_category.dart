import 'package:clothes_shop/src/colors/theme_default.dart';
import 'package:clothes_shop/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String title;
  final String image;

  const ItemCategory({super.key, this.title = "", this.image = ""});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ClipRRect(
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: ThemeDefault().borderColor),
                borderRadius: BorderRadius.circular(70 / 2),
              ),
              child: Image.asset(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: CustomText(text: title),
          )
        ],
      ),
    );
  }
}

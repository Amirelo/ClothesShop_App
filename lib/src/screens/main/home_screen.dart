import 'package:clothes_shop/src/utils/image_path.dart';
import 'package:clothes_shop/src/widgets/custom_scafford.dart';
import 'package:clothes_shop/src/widgets/items/item_banner.dart';
import 'package:clothes_shop/src/widgets/items/item_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScafford(
      body: (Column(
        children: [
          const ItemBanner(
            paddingTop: 16,
          ),
          Container(
            width: double.maxFinite,
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ItemCategory(
                  title: "body",
                  image: ImagePath.bagMan,
                ),
                ItemCategory(
                  title: "body",
                  image: ImagePath.bagMan,
                )
              ],
            ),
          ),
          const Icon(Icons.fiber_manual_record),
          const Text("Category"),
          const Text("More Category"),
          const Text("Flash Sale"),
          const Text("See More"),
          const Text("Mega Sale"),
          const Text("See More"),
          Image.asset(
            'assets/images/logo_blue.png',
            width: 343208,
            height: 100,
          ),
        ],
      )),
    );
  }
}

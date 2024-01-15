import 'package:clothes_shop/src/widgets/custom_scafford.dart';
import 'package:clothes_shop/src/widgets/items/item_banner.dart';
import 'package:clothes_shop/src/widgets/items/item_category.dart';
import 'package:flutter/material.dart';

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
          ItemCategory(
            title: "Man shirt",
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

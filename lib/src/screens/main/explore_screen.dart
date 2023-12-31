import 'package:clothes_shop/src/widgets/custom_scafford.dart';
import 'package:flutter/material.dart';

class ExploreScore extends StatelessWidget {
  const ExploreScore({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScafford(
      body: (Column(
        children: [
          TextField(decoration: InputDecoration(labelText: "Search")),
          Icon(Icons.search),
          Icon(Icons.favorite),
          Text("Man Fashion"),
          Text("Woman Fashion"),
        ],
      )),
    );
  }
}

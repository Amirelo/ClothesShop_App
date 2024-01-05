import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({super.key});

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
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(70 / 2)),
              child: Icon(Icons.air),
            ),
          )
        ],
      ),
    );
  }
}

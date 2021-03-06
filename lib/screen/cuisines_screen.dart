import 'package:flutter/material.dart';

import '../cuisine_data.dart';
import '../widgets/cuisine_item.dart';

class CuisineScreen extends StatelessWidget {
  const CuisineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: <Widget>[
        ...cuisineData
            .map(
              (data) => CuisineItem(
                title: data.title,
                color1: data.color1,
                color2: data.color2,
                id: data.id,
              ),
            )
            .toList(),
      ],
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './cuisine_data.dart';
import './cuisine_item.dart';

class CuisineScreen extends StatelessWidget {
  const CuisineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sidechef",
        ),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: <Widget>[
          ...cuisineData
              .map(
                (data) => CuisineItem(title: data.title, color: data.color,id: data.id,),
              )
              .toList(),
        ],
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/meal.dart';

class CuisineMeal extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  CuisineMeal(
      {required this.affordability,
      required this.complexity,
      required this.duration,
      required this.imageUrl,
      required this.title});

  void displayRecipe() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: displayRecipe,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

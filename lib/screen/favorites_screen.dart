import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/cuisine_meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen({required this.favoriteMeals});

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      const Center(
          child: Text(
        "Oops! You don't have any favorites yet!",
        style: TextStyle(color: Colors.black),
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Favourite " + " Recipes",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return CuisineMeal(
              affordability: favoriteMeals[index].affordability,
              complexity: favoriteMeals[index].complexity,
              duration: favoriteMeals[index].duration,
              imageUrl: favoriteMeals[index].imageUrl,
              title: favoriteMeals[index].title,
              color1: Colors.teal,
              color2: Colors.amber,
              id: favoriteMeals[index].id,
            );
          },
          itemCount: favoriteMeals.length,
        ));
  }
}

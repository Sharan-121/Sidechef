import 'package:flutter/material.dart';

import '../cuisine_data.dart';
import '../widgets/cuisine_meal.dart';

class CuisineRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final cuisineId = routeArgs["id"];
    final cuisineName = routeArgs["title"];
    final Color color = routeArgs['color'] as Color;

    final cuisineMatch = recipeData.where((meal) {
      return meal.cuisines.contains(cuisineId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            cuisineName + " Recipes",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                color.withOpacity(0.9),
                color.withGreen(8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return CuisineMeal(
              affordability: cuisineMatch[index].affordability,
              complexity: cuisineMatch[index].complexity,
              duration: cuisineMatch[index].duration,
              imageUrl: cuisineMatch[index].imageUrl,
              title: cuisineMatch[index].title,
            );
          },
          itemCount: cuisineMatch.length,
        ));
  }
}
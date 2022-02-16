import 'package:flutter/material.dart';

class CuisineRecipe extends StatelessWidget {
  final String cuisineId;
  final String cuisineName;

  CuisineRecipe({required this.cuisineId, required this.cuisineName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(cuisineName)),
      body: Center(
        child: Text(
          "Recipes....",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}

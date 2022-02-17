import 'package:flutter/material.dart';

class CuisineRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final cuisineId = routeArgs["id"];
    final cuisineName = routeArgs["title"];
    final Color color = routeArgs['color'] as Color;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          cuisineName.toString(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              color.withOpacity(0.9),
              // color,
              color.withGreen(8),
              // color.withBlue(8),
              // color.withRed(8),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
        ),
      ),
      body: Center(
        child: Text(
          "Recipes....",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}

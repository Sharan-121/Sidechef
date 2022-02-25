import 'dart:ui';

import 'package:flutter/material.dart';

import '../cuisine_data.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail({Key? key}) : super(key: key);

  static const routeName = '/RecipeDetail';

  Widget buildSectionText(BuildContext ctx, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      // padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final recipeId = ModalRoute.of(context)?.settings.arguments as String;

    final selectedMeal = recipeData.firstWhere((meal) => meal.id == recipeId);

    return Scaffold(
        appBar: AppBar(title: Text(selectedMeal.title)),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionText(context, "Ingredients"),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              height: 150,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Colors.teal,
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child:
                          Center(child: Text(selectedMeal.ingredients[index]))),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionText(context, "Steps"),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              height: 150,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) => ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '${(index + 1)}. ' + selectedMeal.steps[index],
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ]),
        ));
  }
}

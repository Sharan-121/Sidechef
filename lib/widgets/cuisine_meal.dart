import 'dart:ui';

import 'package:flutter/material.dart';
import '../screen/recipe_screen.dart';

import '../models/meal.dart';

class CuisineMeal extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final Color color;
  final String id;

  CuisineMeal(
      {required this.affordability,
      required this.complexity,
      required this.duration,
      required this.imageUrl,
      required this.title,
      required this.color,
      required this.id});

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Challenging:
        return 'Challenging';
      case Complexity.Hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.Pricey:
        return 'Pricey';
      case Affordability.Luxurious:
        return 'Luxury';
      default:
        return 'Unknown';
    }
  }

  void displayRecipe(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(RecipeDetail.routeName,arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => displayRecipe(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  child: Image.network(
                    imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                // Positioned(
                //   bottom: 5,
                //   right: 10,
                //   child: Container(
                //     decoration: BoxDecoration(
                //         borderRadius:
                //             const BorderRadius.all(Radius.circular(10)),
                //         border: Border.all(color: Colors.black),
                //         color: Colors.black45),
                //     // color: Colors.black45,
                //     width: 180,
                //     child: Text(title,
                //         style: const TextStyle(
                //           fontSize: 22,
                //           color: Colors.white,
                //         ),
                //         softWrap: true,
                //         overflow: TextOverflow.fade),
                //   ),
                // ),
              ],
            ),
            Container(
              // margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(Icons.schedule),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '$duration min',
                        style: TextStyle(color: Colors.black87),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.work_outline),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        complexityText,
                        style: TextStyle(color: Colors.black87),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.attach_money),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        affordabilityText,
                        style: TextStyle(color: Colors.black87),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

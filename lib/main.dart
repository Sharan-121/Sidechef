import 'package:flutter/material.dart';
import 'package:restaurant_cuisine_app/screen/cuisine_recipe.dart';
import 'package:restaurant_cuisine_app/screen/cuisines_screen.dart';
import 'package:restaurant_cuisine_app/screen/tabs_screen.dart';
import '../screen/recipe_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sidechef',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ),
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
          bodyText1:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          bodyText2:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          // titleMedium: const TextStyle(
          //     color: Colors.white,
          //     fontFamily: 'RobotoCondensed',
          //     fontWeight: FontWeight.bold),
        ),
      ),
      home: const TabScreen(),
      routes: {
        '/CuisineRecipe': (ctx) => CuisineRecipe(),
        '/RecipeDetail': (ctx) => RecipeDetail(),
      },
    );
  }
}

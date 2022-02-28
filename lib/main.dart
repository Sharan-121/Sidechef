import 'package:flutter/material.dart';
import 'package:restaurant_cuisine_app/screen/cuisine_recipe.dart';
import 'package:restaurant_cuisine_app/screen/filter_screen.dart';
import './cuisine_data.dart';
import 'package:restaurant_cuisine_app/screen/tabs_screen.dart';
import '../screen/recipe_screen.dart';
import './models/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({Key? key}) : super(key: key);
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> _availableMeals = recipeData;

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = recipeData.where((element) {
        if (_filters['gluten'] != null &&
            _filters['gluten'] == false &&
            !element.isGlutenFree) {
          return false;
        }
        if (_filters['lactose'] != null &&
            _filters['lactose'] == false &&
            !element.isLactoseFree) {
          return false;
        }
        if (_filters['vegan'] != null &&
            _filters['vegan'] == false &&
            !element.isVegan) {
          return false;
        }
        if (_filters['vegetarian'] != null &&
            _filters['vegetarian'] == false &&
            !element.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

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
      routes: {
        '/': (ctx) => TabScreen(),
        '/CuisineRecipe': (ctx) => CuisineRecipe(
              availableMeals: _availableMeals,
            ),
        '/RecipeDetail': (ctx) => RecipeDetail(),
        '/FilterScreen': (ctx) => FilterScreen(saveFilter: _setFilters),
      },
    );
  }
}

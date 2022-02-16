import 'package:flutter/material.dart';
import 'package:restaurant_cuisine_app/cuisines_screen.dart';
import 'package:google_fonts/google_fonts.dart';

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
        ).copyWith(
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
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
      home: const CuisineScreen(),
    );
  }
}

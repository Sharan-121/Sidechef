import 'package:flutter/material.dart';
import 'package:restaurant_cuisine_app/cuisines_screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const CuisineScreen(),
    );
  }
}



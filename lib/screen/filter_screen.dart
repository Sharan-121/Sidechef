import 'package:flutter/material.dart';
import 'package:restaurant_cuisine_app/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
    );
  }
}

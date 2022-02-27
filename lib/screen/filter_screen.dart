import 'package:flutter/material.dart';
import 'package:restaurant_cuisine_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget buildSwitchTile(
      BuildContext context, bool value, String text, Function update) {
    return SwitchListTile(
      value: value,
      onChanged: update,
      subtitle: Text(
        "Only display " + text + " recipes",
        style: TextStyle(color: Colors.black38),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text("Filters"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "Customise your Meal Selection",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
        child: ListView(
      children: <Widget>[
          buildSwitchTile(context, _glutenFree, "Gluten-free",(newValue){
            setState(() {
              _glutenFree = newValue;
            });
          }),
          buildSwitchTile(context, _vegetarian, "Vegetarian",(newValue){
            setState(() {
              _vegetarian = newValue;
            });
          }),
          buildSwitchTile(context, _vegan, "Vegan",(newValue){
            setState(() {
              _vegan = newValue;
            });
          }),
          buildSwitchTile(context, _lactoseFree, "Lactose-free",(newValue){
            setState(() {
              _lactoseFree = newValue;
            });
          }),
        ],
      ),
          ),
        ]
      )
    );
}

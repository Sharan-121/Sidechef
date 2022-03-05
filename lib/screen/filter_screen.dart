import 'package:flutter/material.dart';
import 'package:restaurant_cuisine_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  final Function saveFilter;
  final Map<String, bool> currentFilter;

  FilterScreen({required this.saveFilter, required this.currentFilter});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  initState() {
    _glutenFree = widget.currentFilter['gluten'] ?? false;
    _lactoseFree = widget.currentFilter['lactose'] ?? false;
    _vegan = widget.currentFilter['vegan'] ?? false;
    _vegetarian = widget.currentFilter['vegetarian'] ?? false;

    super.initState();
  }

  Widget buildSwitchTile(
      bool value, String text, Function(bool update) update) {
    return SwitchListTile(
      activeColor: Colors.teal,
      value: value,
      onChanged: update,
      subtitle: Text(
        "Only display " + text + " recipes",
        style: const TextStyle(color: Colors.black38),
      ),
      title: Text(
        text,
        style: const TextStyle(
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
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  final selectedFilters = {
                    'gluten': false,
                    'lactose': false,
                    'vegan': false,
                    'vegetarian': false,
                  };
                  widget.saveFilter(selectedFilters);
                },
                icon: const Icon(Icons.save))
          ],
        ),
        body: Column(children: [
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
                buildSwitchTile(_glutenFree, "Gluten-free", (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                buildSwitchTile(_vegetarian, "Vegetarian", (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
                buildSwitchTile(_vegan, "Vegan", (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                }),
                buildSwitchTile(_lactoseFree, "Lactose-free", (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                }),
              ],
            ),
          ),
        ]));
  }
}

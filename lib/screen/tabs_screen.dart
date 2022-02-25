import 'package:flutter/material.dart';
import 'package:restaurant_cuisine_app/screen/cuisines_screen.dart';
import 'package:restaurant_cuisine_app/screen/favorites_screen.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:restaurant_cuisine_app/widgets/main_drawer.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // colors: [HexColor("#ff512f"), HexColor("#dd2476")],
                colors: [HexColor("#000428"), HexColor("#004e92")],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          centerTitle: true,
          title: const Text(
            "SideChef",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          bottom: const TabBar(tabs: <Widget>[
            Tab(icon: Icon(Icons.food_bank), text: "Cuisines"),
            Tab(icon: Icon(Icons.star), text: "Favs"),
          ]),
        ),
        drawer: MainDrawer(),
        body: TabBarView(children: <Widget>[
          CuisineScreen(),
          FavoritesScreen(),
        ]),
      ),
    );
  }
}

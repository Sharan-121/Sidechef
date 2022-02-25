import 'package:flutter/material.dart';
import 'package:restaurant_cuisine_app/screen/cuisines_screen.dart';
import 'package:restaurant_cuisine_app/screen/favorites_screen.dart';

import 'package:hexcolor/hexcolor.dart';

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
                  colors: [HexColor("8360c3"), HexColor("2ebf91")],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            centerTitle: true,
            title: const Text(
              "SideChef",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            bottom: const TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.category), text: "Cuisines"),
              Tab(icon: Icon(Icons.star), text: "Favs"),
            ]),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [HexColor("8360c3"), HexColor("2ebf91")],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: TabBarView(children: <Widget>[
              CuisineScreen(),
              FavoritesScreen(),
            ]),
          )),
    );
  }
}

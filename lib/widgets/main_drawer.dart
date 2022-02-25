import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "SideChef",
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Classic Cuisines with a Modern twist",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ],
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [HexColor("#000428"), HexColor("#004e92")],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.restaurant, size: 20),
            title: const Text(
              "Cuisines",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.filter, size: 20),
            title: const Text(
              "Filter",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/FilterScreen');
            },
          ),
        ],
      ),
    );
  }
}

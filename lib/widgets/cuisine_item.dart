import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuisineItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color1;
  final Color color2;

  CuisineItem(
      {required this.title,
      required this.color1,
      required this.color2,
      required this.id});

  void selectCuisine(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/CuisineRecipe',
      arguments: {"id": id, "title": title, "color1": color1, "color2": color2},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCuisine(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              title,
              style: GoogleFonts.tangerine(
                  textStyle: Theme.of(context).textTheme.bodyText1,
                  fontWeight: FontWeight.w800,
                  fontSize: 35),
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

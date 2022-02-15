import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuisineItem extends StatelessWidget {
  final String title;
  final Color color;

  CuisineItem({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.tangerine(
              textStyle: Theme.of(context).textTheme.bodyText1,
              fontWeight: FontWeight.w800,
              fontSize: 35),
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.9),
            color,
            // color.withGreen(8),
            // color.withBlue(8),
            // color.withRed(8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

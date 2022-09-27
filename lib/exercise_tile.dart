import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseTile extends StatelessWidget {
  final String titleText;
  final String time;
  final Color iconColor;
  final Color iconBorderColor;
  final icon;

  const ExerciseTile({
    super.key,
    required this.time,
    required this.titleText,
    required this.iconBorderColor,
    required this.iconColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: iconBorderColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          horizontalTitleGap: 35,
          title: Text(
            titleText,
            style: GoogleFonts.dosis(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            time,
            style: GoogleFonts.dosis(),
          ),
        ),
      ),
    );
  }
}

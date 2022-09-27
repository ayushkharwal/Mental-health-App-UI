import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Emojis extends StatelessWidget {
  final String emoji;
  final String emojiName;
  const Emojis({super.key, required this.emoji, required this.emojiName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[700],
              ),
              padding: EdgeInsets.all(25),
              child: Text(
                emoji,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Text(
            emojiName,
            style: GoogleFonts.dosis(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

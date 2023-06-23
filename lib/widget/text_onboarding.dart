import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextOnBoarding extends StatelessWidget {
  const TextOnBoarding({
    required this.title,
    required this.content,
    super.key,
  });
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color(0xFF23203F)),
            textAlign: TextAlign.center,

          ),
          SizedBox(
            height: 21,
          ),
          Text(
            content,
            style: GoogleFonts.openSans(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: Color(0xFF716F87)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinsLight extends StatelessWidget {
  const PoppinsLight(
      {super.key,
        required this.text,
        this.fontsize = 15, this.color = Colors.white,});

  final String text;
  final double fontsize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w300,
          fontSize: fontsize,
          color: color
      ),
    );
  }
}

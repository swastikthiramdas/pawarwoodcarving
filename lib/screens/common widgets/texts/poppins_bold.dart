import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinBold extends StatelessWidget {
  const PoppinBold({super.key, required this.text, this.color = Colors.black, this.fontSize});

  final String text;
  final Color color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(fontWeight: FontWeight.w700 , color: color , fontSize: fontSize),
    );
  }
}

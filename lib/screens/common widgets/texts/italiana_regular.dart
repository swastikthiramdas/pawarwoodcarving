import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Italiana extends StatelessWidget {
  const Italiana({super.key, required this.text, this.color = Colors.white, this.fontsize = 20});
  final String text;
  final Color color;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.italiana(fontWeight: FontWeight.w400 , color: color , fontSize: fontsize),
    );
  }
}

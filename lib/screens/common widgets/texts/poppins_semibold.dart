import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinSemiBold extends StatelessWidget {
  const PoppinSemiBold({super.key, required this.text,  this.fontsize = 15, this.color = Colors.white});

  final String text;
  final Color color;
final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(fontWeight: FontWeight.w600 , fontSize: fontsize , color: color),
    );
  }
}

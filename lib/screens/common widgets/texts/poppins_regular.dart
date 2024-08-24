import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinsRegular extends StatelessWidget {
  const PoppinsRegular(
      {super.key,
      required this.text,
      this.color = Colors.white,
      this.fontsize = 14,
      this.letterSpacing = 0.0, this.textAlign, this.textOverflow, this.maxLine});

  final String text;
  final Color color;
  final double fontsize;
  final double letterSpacing;
  final int? maxLine;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        color: color,
        letterSpacing: letterSpacing,
        fontSize: fontsize,
      ),
      maxLines: maxLine,
      overflow: textOverflow,
      textAlign: textAlign,
    );
  }
}

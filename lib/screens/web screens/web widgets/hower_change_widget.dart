import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class HowerChangeWidget extends StatefulWidget {
  const HowerChangeWidget({
    super.key,
    this.fontsize = 15,
    required this.text, this.strokeWidth = 1,
  });

  final String text;

  final double fontsize;
  final double strokeWidth;

  @override
  State<HowerChangeWidget> createState() => _HowerChangeWidgetState();
}

class _HowerChangeWidgetState extends State<HowerChangeWidget> {
  bool ishower = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          ishower = true;
        });
      },
      onExit: (event) {
        setState(() {
          ishower = false;
        });
      },
      child: Container(
        child: ishower
            ? Text(
                widget.text,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: widget.fontsize,
                    color: Colors.white),
              )
            : Text(
                widget.text,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: widget.fontsize,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = widget.strokeWidth
                    ..color = brown,
                ),
              ),
      ),
    );
  }
}

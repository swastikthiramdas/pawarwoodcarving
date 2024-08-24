import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../common widgets/texts/poppins_regular.dart';

class HalfToFullUnderlineText extends StatefulWidget {
  const HalfToFullUnderlineText({super.key, required this.text, this.widthsize = 80, this.letterSpacing = 0.0,this.fontsize = 15,});
  final String text;
  final double letterSpacing;
  final double widthsize;
  final double fontsize;

  @override
  State<HalfToFullUnderlineText> createState() => _HalfToFullUnderlineTextState();
}

class _HalfToFullUnderlineTextState extends State<HalfToFullUnderlineText> {

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
      child: SizedBox(
        width: widget.widthsize,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PoppinsRegular(
              text: widget.text,
              color: Colors.white,
              fontsize: widget.fontsize,
              letterSpacing: widget.letterSpacing,
            ),
            SizedBox(height: 5),
            AnimatedContainer(
              height: 2,
              width: ishower ? widget.widthsize : widget.widthsize * .5,
              color: ishower ? red : Colors.white,
              duration: const Duration(milliseconds: 300),
            )
          ],
        ),
      ),
    );
  }
}

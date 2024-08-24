import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../common widgets/texts/poppins_regular.dart';

class HalfUnderLineText extends StatefulWidget {
  const HalfUnderLineText({super.key, this.fontsize = 15,  this.widthsize = 240, required this.text, this.letterSpacing = 0.0});
  final String text;
  final double fontsize;
  final double widthsize;
  final double letterSpacing;

  @override
  State<HalfUnderLineText> createState() => _HalfUnderLineTextState();
}

class _HalfUnderLineTextState extends State<HalfUnderLineText> {

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
            Row(
              children: [
                Container(
                  height: 2,
                  width: (widget.widthsize / 2.5),
                  color: Colors.transparent,
                ),
                AnimatedContainer(
                  height: 2,
                  width: ishower ? (widget.widthsize * .5) : 00,
                  color: red,
                  duration: const Duration(milliseconds: 300),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

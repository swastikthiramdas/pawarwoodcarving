import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../texts/poppins_medium.dart';
import '../texts/poppins_regular.dart';

class FooterText extends StatefulWidget {
  const FooterText({super.key, required this.header, required this.description});
  final String header;
  final String description;

  @override
  State<FooterText> createState() => _FooterTextState();
}

class _FooterTextState extends State<FooterText> {
  bool ishower = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e) {
        setState(() {
          ishower = true;
        });
      },
      onExit: (e) {
        setState(() {
          ishower = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PoppinsMedium(
              text: widget.header,
              fontsize: 24,
            ),
            SizedBox(height: 10),
            PoppinsRegular(
              text: widget.description,
              fontsize: 18,
              color: ishower? red :ligthtext,
            )
          ],
        ),
      ),
    );
  }
}

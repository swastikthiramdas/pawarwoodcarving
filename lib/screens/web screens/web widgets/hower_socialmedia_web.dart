import 'package:flutter/material.dart';

class HowerSocialMediaWeb extends StatefulWidget {
  const HowerSocialMediaWeb(
      {super.key, required this.img1, required this.img2});

  final String img1;
  final String img2;

  @override
  State<HowerSocialMediaWeb> createState() => _HowerSocialMediaWebState();
}

class _HowerSocialMediaWebState extends State<HowerSocialMediaWeb> {
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
        height: 40,
        width: 40,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ishower ? widget.img2 : widget.img1,
            ),
              filterQuality: FilterQuality.high
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ParallaxText extends StatelessWidget {
  const ParallaxText({
    Key? key,
    required this.left,
    required this.top,
    required this.child,
  }) : super(key: key);

  final double left;
  final double top;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: child,
    );
  }
}

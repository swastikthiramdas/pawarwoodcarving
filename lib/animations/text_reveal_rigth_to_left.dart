import 'package:flutter/material.dart';

class TextRevealRightToLeft extends StatefulWidget {
  const TextRevealRightToLeft({
    Key? key,
    required this.child,
    required this.maxWidth,
    required this.controller,
    this.textRevealAnimation,
    this.textOpacityAnimation,
  }) : super(key: key);

  final Widget child;
  final double maxWidth;
  final AnimationController controller;
  final Animation<double>? textRevealAnimation;
  final Animation<double>? textOpacityAnimation;

  @override
  State<TextRevealRightToLeft> createState() => _TextRevealRightToLeftState();
}

class _TextRevealRightToLeftState extends State<TextRevealRightToLeft>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> textRevealAnimation;
  late Animation<double> textOpacityAnimation;

  @override
  void initState() {
    controller = widget.controller;

    textRevealAnimation = widget.textRevealAnimation ??
        Tween<double>(begin: 0.0, end: widget.maxWidth).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.3, curve: Curves.easeOut)));

    textOpacityAnimation = widget.textOpacityAnimation ??
        Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.3, curve: Curves.easeOut)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return FadeTransition(
          opacity: textOpacityAnimation,
          child: widget.child,
        );
      },
    );
  }
}

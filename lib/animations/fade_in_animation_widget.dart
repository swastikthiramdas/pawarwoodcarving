import 'package:flutter/material.dart';


class FadeInAnimatedWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;

  const FadeInAnimatedWidget({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    this.delay = const Duration(),
  }) : super(key: key);

  @override
  _FadeInAnimatedWidgetState createState() => _FadeInAnimatedWidgetState();
}

class _FadeInAnimatedWidgetState extends State<FadeInAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
      reverseDuration: widget.duration,
      value: 0.0,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
        reverseCurve: Curves.easeOut,
      ),
    );
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(widget.delay, () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.child,
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotatingImageWidget extends StatefulWidget {
  @override
  _RotatingImageWidgetState createState() => _RotatingImageWidgetState();
}

class _RotatingImageWidgetState extends State<RotatingImageWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _rotateImage() {
    if (_controller.isDismissed) {
      _controller.forward();
    } else if (_controller.isCompleted) {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _rotateImage,
      child: AnimatedBuilder(
        animation: _controller,
        child: Image.asset(
          'assets/teddy2.png',
          width: 300,
          height: 300,
        ),
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller.value * 2 * math.pi, // Rotates full 360 degrees
            child: child,
          );
        },
      ),
    );
  }
}

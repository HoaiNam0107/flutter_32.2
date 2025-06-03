import 'package:flutter/material.dart';

class RotatingIcon extends StatefulWidget {
  const RotatingIcon({super.key});

  @override
  RotatingIconState createState() => RotatingIconState();
}

class RotatingIconState extends State<RotatingIcon>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller!,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller!.value * 2 * 3.14159,
          child: Icon(Icons.flutter_dash, size: 100),
        );
      },
    );
  }
}

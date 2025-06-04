import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback? onTap;

  const IconWithText({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(onTap: onTap, child: icon),
        Text(text, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
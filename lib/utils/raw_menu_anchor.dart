import 'package:flutter/cupertino.dart';

class RawMenuAnchor extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const RawMenuAnchor({
    super.key,
    required this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}

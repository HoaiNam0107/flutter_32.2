import 'package:flutter/material.dart';

class Expansible extends StatefulWidget {
  final Widget title;
  final Widget child;
  final bool initiallyExpanded;

  const Expansible({
    super.key,
    required this.title,
    required this.child,
    this.initiallyExpanded = false,
  });

  @override
  State<Expansible> createState() => _ExpansibleState();
}

class _ExpansibleState extends State<Expansible> {
  late bool _expanded;

  @override
  void initState() {
    super.initState();
    _expanded = widget.initiallyExpanded;
  }

  void _toggle() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: widget.title,
            trailing: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
            onTap: _toggle,
          ),
          AnimatedCrossFade(
            firstChild: Container(),
            secondChild: widget.child,
            crossFadeState: _expanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 200),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart' hide Expansible;
import 'expansible.dart';

class ExpansibleExample extends StatelessWidget {
  const ExpansibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expansible(
        title: const Text('Tap to expand'),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('This is the expanded content.'),
              SizedBox(height: 8),
              Text('You can put any widget here.'),
            ],
          ),
        ),
      ),
    );
  }
}

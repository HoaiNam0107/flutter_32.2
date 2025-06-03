import 'package:flutter/material.dart';

class TabFour extends StatelessWidget {
  const TabFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          splashFactory: InkSparkle.splashFactory,
          splashColor: Colors.amber.withOpacity(0.3),
          highlightColor: Colors.amber.withOpacity(0.1),
          borderRadius: BorderRadius.circular(50),
          child: RepaintBoundary(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Badge(
                label: Text('Offline'),
                backgroundColor: Colors.amber,
                textColor: Colors.black,
                child: Icon(Icons.wifi, size: 40),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/download.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            // TODO: Add login logic here
          },
          child: Text('Login'),
        ),
      ],
    );
  }
}

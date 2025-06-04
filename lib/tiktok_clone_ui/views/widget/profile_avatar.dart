import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(profilePicUrl),
          radius: 25.0,
        ),
        Positioned(
          bottom: -10.0,
          right: 2.0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            width: 25,
            child: const Icon(Icons.add, color: Colors.white, size: 25.0),
          ),
        ),
      ],
    );
  }
}
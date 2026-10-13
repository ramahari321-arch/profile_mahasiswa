import 'package:flutter/material.dart';

import 'profile_photo.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String nim;

  const ProfileHeader({super.key, required this.name, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePhoto(radius: 60),
        const SizedBox(height: 16),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text('NIM: $nim', style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'about_screen.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 24),

                    const ProfileHeader(
                      name: 'Ramadhan Hari Nugroho',
                      nim: '25.11.6583',
                    ),

                    const SizedBox(height: 24),

                    const ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'email@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),

                    const SizedBox(height: 24),
                    const SocialMediaRow(),
                    const SizedBox(height: 16),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutScreen(),
                          ),
                        );
                      },
                      child: const Text('Tentang Aplikasi'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            const Flexible(flex: 1, child: ActionButtons()),
          ],
        ),
      ),
    );
  }
}

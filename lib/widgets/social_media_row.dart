import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void showMessage(BuildContext context, String platform) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Kamu memilih $platform')));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => showMessage(context, 'Instagram'),
          icon: const Icon(Icons.camera_alt),
          color: Colors.pink,
        ),
        IconButton(
          onPressed: () => showMessage(context, 'LinkedIn'),
          icon: const Icon(Icons.work),
          color: Colors.blue,
        ),
        IconButton(
          onPressed: () => showMessage(context, 'GitHub'),
          icon: const Icon(Icons.code),
          color: Colors.black,
        ),
      ],
    );
  }
}

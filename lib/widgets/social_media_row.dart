import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String name) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Anda mengklik $name'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Instagram
        IconButton(
          icon: const Icon(Icons.camera_alt),
          iconSize: 35,
          color: Colors.pink,
          tooltip: 'Instagram',
          onPressed: () {
            _showSnackBar(context, 'Instagram');
          },
        ),

        // LinkedIn
        IconButton(
          icon: const Icon(Icons.business),
          iconSize: 35,
          color: Colors.blue,
          tooltip: 'LinkedIn',
          onPressed: () {
            _showSnackBar(context, 'LinkedIn');
          },
        ),

        // GitHub
        IconButton(
          icon: const Icon(Icons.code),
          iconSize: 35,
          color: Colors.black,
          tooltip: 'GitHub',
          onPressed: () {
            _showSnackBar(context, 'GitHub');
          },
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class FeaturesItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const FeaturesItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

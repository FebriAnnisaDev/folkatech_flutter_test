// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:folkatech_flutter_test/shared/util/const.dart';

class QButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color? color;
  final IconData? icon;
  final double? width;
  const QButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.color,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: 42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? orangeColor,
        ),
        onPressed: () => onPressed(),
        child: Row(
          children: [
            if (icon != null)
              Icon(
                icon,
                size: 24.0,
              ),
            const Spacer(),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

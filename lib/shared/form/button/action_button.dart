// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:folkatech_flutter_test/shared/util/const.dart';

class QActionButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  const QActionButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = 20.0;
    final height = MediaQuery.of(context).size.height * 0.07;
    return Container(
      padding: const EdgeInsets.all(padding),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: height + (padding * 2),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: orangeColor,
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

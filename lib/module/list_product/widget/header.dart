import 'package:flutter/material.dart';
import '../../../shared/util/const.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "List Products",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.filter_list,
          size: 22,
          color: greyColor,
        ),
        const SizedBox(
          width: 20.0,
        ),
        const Icon(
          Icons.restaurant_menu_rounded,
          size: 22.0,
          color: greyColor,
        ),
      ],
    );
  }
}

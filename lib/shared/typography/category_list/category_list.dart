// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../../shape/dot_center/dot_container.dart';

class QCategoryList extends StatelessWidget {
  final List<String> items;
  const QCategoryList({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: List.generate(items.length, (index) {
            var category = items[index];
            return Row(
              children: [
                if (index > 0) const DotContainer(),
                Text(
                  category,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

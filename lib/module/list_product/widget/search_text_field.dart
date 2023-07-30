import 'package:flutter/material.dart';

import '../../../shared/util/const.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              initialValue: null,
              cursorColor: orangeColor,
              decoration: InputDecoration.collapsed(
                filled: true,
                fillColor: Colors.transparent,
                hoverColor: Colors.transparent,
                hintText: "What are you craving for?",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade400,
                ),
              ),
              onFieldSubmitted: (value) {},
            ),
          ),
          Icon(
            Icons.mic,
            color: Colors.grey.shade500,
            size: 20,
          ),
        ],
      ),
    );
  }
}

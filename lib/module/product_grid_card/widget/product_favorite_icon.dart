import 'package:flutter/material.dart';
import 'package:folkatech_flutter_test/providers/list_product_providers.dart';
import 'package:provider/provider.dart';

class ProductFavoriteIcon extends StatelessWidget {
  final int index;
  const ProductFavoriteIcon({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ListProductProvider>(
      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
      builder: (context, ListProductProvider, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  ListProductProvider.handleFavoriteButton(index);
                },
                child: Icon(
                  ListProductProvider.isFavoriteClickedList[index]
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: ListProductProvider.isFavoriteClickedList[index]
                      ? Colors.red
                      : Colors.grey.shade500,
                  size: 25,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

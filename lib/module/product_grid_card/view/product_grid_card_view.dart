import 'package:flutter/material.dart';
import 'package:folkatech_flutter_test/providers/list_product_providers.dart';
import 'package:provider/provider.dart';
import '../../../model/product.dart';
import '../../../shared/util/const.dart';
import '../widget/product_add_button.dart';
import '../widget/product_favorite_icon.dart';
import '../widget/product_image.dart';

class ProductGridCardView extends StatelessWidget {
  final int index;
  const ProductGridCardView({
    Key? key,
    required this.index,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Consumer<ListProductProvider>(
      // ignore: non_constant_identifier_names
      builder: (context, ProductGridCardsProvider, _) {
        return Card(
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    ProductImage(product: product),
                    ProductFavoriteIcon(
                      index: index,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "IDR ${product.price}",
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: greyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    ProductAddButton(
                      index: index,
                      product: product,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

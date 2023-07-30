import 'package:flutter/material.dart';
import 'package:folkatech_flutter_test/module/product_detail/view/product_detail_view.dart';
import 'package:folkatech_flutter_test/providers/list_product_providers.dart';
import 'package:provider/provider.dart';
import '../../../model/product.dart';
import '../../../shared/util/const.dart';

class ProductAddButton extends StatelessWidget {
  final int index;
  final Product product;

  const ProductAddButton({
    Key? key,
    required this.index,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ListProductProvider>(
      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
      builder: (context, ListProductProvider, _) {
        return Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailView(product: product),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              elevation: 0.5,
              minimumSize: const Size(70, 30),
              backgroundColor: orangeColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "ADD",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}

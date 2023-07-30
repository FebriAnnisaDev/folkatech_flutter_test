import 'package:flutter/material.dart';
import '../../../model/product.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
      ),
      child: Image.network(
        product.cover,
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        fit: BoxFit.cover,
      ),
    );
  }
}

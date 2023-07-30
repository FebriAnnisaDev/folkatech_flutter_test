import 'package:flutter/material.dart';

import '../../../model/product.dart';

class ProductDetailImage extends StatelessWidget {
  const ProductDetailImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          product.cover,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 18,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: FloatingActionButton(
              onPressed: () => Navigator.maybePop(context),
              backgroundColor: Colors.black45,
              mini: true,
              child: const Icon(
                Icons.close,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

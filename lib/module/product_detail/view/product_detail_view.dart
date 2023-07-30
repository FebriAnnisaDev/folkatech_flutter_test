import 'package:flutter/material.dart';
import 'package:folkatech_flutter_test/providers/list_product_providers.dart';
import 'package:provider/provider.dart';
import '../../../model/product.dart';
import '../../../shared/form/button/action_button.dart';
import '../../../shared/form/counter/counter_picker.dart';
import '../widget/option_widget.dart';
import '../widget/product_detail_image.dart';

class ProductDetailView extends StatelessWidget {
  final Product product;

  const ProductDetailView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Consumer<ListProductProvider>(
      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
      builder: (context, ListProductProvider, _) {
        return SafeArea(
          top: false,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProductDetailImage(product: product),
                  OptionWidget(product: product),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Reusable Widget untuk Opsi
                  QCounterPicker(
                    onChanged: (value) {},
                  ),
                  // Reusable Widget untuk Button
                  QActionButton(
                    label: "Add to Order (\$11.98)",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

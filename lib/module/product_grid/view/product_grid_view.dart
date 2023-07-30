import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:folkatech_flutter_test/providers/list_product_providers.dart';
import 'package:provider/provider.dart';
import '../../product_grid_card/view/product_grid_card_view.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    // Use the Consumer widget to listen for changes in the ProductGridViewProvider
    return Consumer<ListProductProvider>(
      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
      builder: (context, ListProductProvider, _) {
        if (ListProductProvider.products.isEmpty) {
          ListProductProvider.fetchProducts();
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return SingleChildScrollView(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.65,
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 8,
              ),
              itemCount: ListProductProvider.products.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final product = ListProductProvider.products[index];

                return ProductGridCardView(
                  product: product,
                  index: index,
                );
              },
            ),
          );
        }
      },
    );
  }
}

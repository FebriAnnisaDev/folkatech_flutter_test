import 'package:expandable_bottom_bar_new/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:folkatech_flutter_test/module/expendable_bottom_sheet/view/expendable_bottom_sheet.dart';
import 'package:folkatech_flutter_test/shared/util/const.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import '../../product_grid/view/product_grid_view.dart';
import '../widget/header.dart';
import '../widget/search_text_field.dart';

class ListProductView extends StatelessWidget {
  const ListProductView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _handleRefresh() async {
      return await Future.delayed(const Duration(seconds: 2));
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.network(
            "https://i.ibb.co/9rYShcs/Desain-tanpa-judul-14.png",
            fit: BoxFit.cover,
          ),
        ),
        title: const SearchTextField(),
        actions: const [
          Icon(
            Icons.shopping_basket,
            color: orangeColor,
            size: 24.0,
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
      backgroundColor: Theme.of(context).canvasColor,
      extendBody: true,
      // tambahan fitur untuk Expandable Bottom NavigationBar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onVerticalDragUpdate: DefaultBottomBarController.of(context)!.onDrag,
        onVerticalDragEnd: DefaultBottomBarController.of(context)!.onDragEnd,
        child: FloatingActionButton.extended(
          label: const Text("Features"),
          elevation: 2,
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          onPressed: () => DefaultBottomBarController.of(context)!.swap(),
        ),
      ),
      bottomNavigationBar: const ExpendableBottomSheet(),
      // Swipe on Refresh
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: orangeColor,
        height: 300,
        backgroundColor: Colors.white,
        animSpeedFactor: 2,
        showChildOpacityTransition: true,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              child: const Column(
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Header(),
                  SizedBox(
                    height: 20.0,
                  ),
                  // Tampilan Produk
                  ProductGridView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:expandable_bottom_bar_new/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../list_product/view/list_product_view.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => DefaultBottomBarController(
            child: const ListProductView(),
          ),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network(
          'https://i.ibb.co/RYB9yvv/folkatech-logo.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

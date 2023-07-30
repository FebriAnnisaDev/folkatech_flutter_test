import 'package:flutter/material.dart';
import 'package:folkatech_flutter_test/module/splash_screen/splash_screen.dart';
import 'package:folkatech_flutter_test/providers/list_product_providers.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(home: MyApp()));

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListProductProvider>(
      create: (_) => ListProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: SplashScreen(),
      ),
    );
  }
}

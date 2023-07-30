import 'package:dio_http/dio_http.dart';
import 'package:flutter/foundation.dart';

import '../model/product.dart';

class UserService {
  static Future<List<Product>> getUser() async {
    try {
      var response = await Dio().get(
        "https://mocki.io/v1/52c41978-6e31-4ea3-b917-01899e3ed373",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );

      List<dynamic> data = response.data;
      List<Product> products =
          data.map((item) => Product.fromJson(item)).toList();
      return products;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }
}

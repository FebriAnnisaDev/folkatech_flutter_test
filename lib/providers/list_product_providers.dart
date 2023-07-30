import 'package:flutter/foundation.dart';
import '../../../model/product.dart';
import '../../../service/user_service.dart';

class ListProductProvider extends ChangeNotifier {
  List<Product> products = [];
  List<bool> isAddButtonClickedList = [false, false, false, false];
  List<bool> isRemoveClickedList = [false, false, false, false];
  List<bool> isFavoriteClickedList = [false, true, false, false];
  List<bool> isAddClickedList = [false, false, false, false];
  int number = 1;

  Future<void> getUser() async {
    List<Product> data = await UserService.getUser();
    products = data;
    notifyListeners();
  }

  void handleFavoriteButton(int index) {
    isFavoriteClickedList[index] = !isFavoriteClickedList[index];
    notifyListeners();
  }

  void handleAddButton(int index) {
    isAddClickedList[index] = true;
    number += 1;
    notifyListeners();
  }

  void handleRemoveButton(int index) {
    isRemoveClickedList[index] = true;
    if (number > 1) {
      number -= 1;
    } else if (number == 1) {
      isAddButtonClickedList[index] = false;
    }
    notifyListeners();
  }

  void handleAddButtonClick(int index) {
    isAddButtonClickedList[index] = true;
    notifyListeners();
  }

  Future<void> fetchProducts() async {
    await getUser();
    notifyListeners();
  }
}

import 'dart:convert';
import 'package:coffee_masters/data_model.dart';
import 'package:http/http.dart' as http;

class DataManager {
  List<Category>? _menu;
  List<ItemInCart> cart = [];

  void addToCart(Product product) {
    for (var item in cart) {
      if (item.product.id == product.id) {
        item.qty++;
        return;
      }
    }
    cart.add(ItemInCart(product: product, qty: 1));
  }

  void removeFromCart(Product product) {
    cart.removeWhere((item) => item.product.id == product.id);
  }

  void clearCart() {
    cart.clear();
  }

  double getCartTotal() {
    double sum = 0;
    for (var item in cart) {
      sum += item.product.price * item.qty;
    }
    return sum;
  }

  Future<void> fetchMenu() async {
    try {
      const url = 'https://firtman.github.io/coffeemasters/api/menu.json';
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        _menu = [];
        var decodedData = jsonDecode(response.body) as List<dynamic>;
        for (var json in decodedData) {
          _menu?.add(Category.fromJson(json));
        }
      } else {
        throw Exception("Error loading data");
      }
    } catch (e) {
      throw Exception("Error loading data");
    }
  }

  Future<List<Category>> getMenu() async {
    if (_menu == null) {
      await fetchMenu();
    }
    return _menu!;
  }
}

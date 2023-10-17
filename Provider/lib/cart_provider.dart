import 'package:flutter/foundation.dart';
import 'package:shoppingcart/produt.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  int get totalCost {
    int total = 0;
    for (var product in _cartItems) {
      total += product.price;
    }
    return total;
  }

  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }
}

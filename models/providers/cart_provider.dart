// providers/cart_provider.dart
import 'package:flutter/material.dart';
import '../cart_item.dart';

class CartProvider with ChangeNotifier {
  List<CartItem> _items = [];

  List<CartItem> get items => _items;
  
  int get totalItems {
    return _items.fold(0, (sum, item) => sum + item.quantity);
  }
  
  double get totalPrice {
    return _items.fold(0.0, (sum, item) => sum + item.total);
  }

  void addItem(String name, double price) {
    final existingItemIndex = _items.indexWhere((item) => item.name == name);
    
    if (existingItemIndex != -1) {
      _items[existingItemIndex].quantity++;
    } else {
      _items.add(CartItem(name: name, price: price));
    }
    notifyListeners();
  }

  void removeItem(String name) {
    _items.removeWhere((item) => item.name == name);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
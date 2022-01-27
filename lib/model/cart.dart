import 'package:joes_pizza/model/pizza.dart';

class Cart {
  final Pizza pizza;
  final int numOfItems;

  Cart({required this.pizza, required this.numOfItems});
}

// List<Cart> demoCarts = [
//   Cart(pizza: home_items[2], numOfItems: 3),
//   Cart(pizza: home_items[1], numOfItems: 2),
//   Cart(pizza: home_items[3], numOfItems: 1),
// ];

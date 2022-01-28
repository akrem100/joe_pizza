import 'package:joes_pizza/model/pizza.dart';

class Cart {
  final Pizza pizza;
  final int numOfItems;
  final String type;
  int ss;
  Cart({
    required this.pizza,
    required this.numOfItems,
    required this.type,
    required this.ss,
  });
}

// List<Cart> demoCarts = [
//   Cart(pizza: home_items[2], numOfItems: 3),
//   Cart(pizza: home_items[1], numOfItems: 2),
//   Cart(pizza: home_items[3], numOfItems: 1),
// ];

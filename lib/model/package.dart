import 'package:joes_pizza/model/pizza.dart';
import 'package:joes_pizza/screen/home/boison/components/boisson.dart';

import 'boisson.dart';

class Package {
  Pizza pizza;
  Boissons boissons;
  Map pack = {"pizza": 2, "boissons": 3};
  Package({
    required this.pizza,
    required this.boissons,
    required this.pack,
  });
}

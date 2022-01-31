import 'package:flutter/material.dart';
import 'package:joes_pizza/main.dart';
import 'package:joes_pizza/screen/home/boison/components/boisson.dart';
import 'package:joes_pizza/screen/home/boison/components/detail/detail_boison.dart';
import 'package:joes_pizza/screen/home/components/detail/detail_pizza.dart';
import 'package:joes_pizza/screen/home/components/pizza.dart';
import 'package:joes_pizza/screen/home/components/special_offre_card.dart';
import 'package:joes_pizza/screen/home/home_screen.dart';
import 'package:joes_pizza/screen/panier/body/list.dart';
import 'package:joes_pizza/screen/panier/panier_screen.dart';
import 'package:joes_pizza/screen/promotion/screen_promotion.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  MyStatefulWidget.routeName: (context) => MyStatefulWidget(),
  Home_Screen.routeName: (context) => Home_Screen(),
  Promotion_Screen.routeName: (context) => Promotion_Screen(),
  Pizza.routeName: (context) => Pizza(),
  FoodDetailsPage.routeName: (context) => FoodDetailsPage(),
  PanierScreen.routeName: (context) => PanierScreen(),
  Boison.routeName: (context) => Boison(),
  Lisst.routeName: (context) => Lisst(),
  BoisonDetailsPage.routeName: (context) => BoisonDetailsPage(),
};

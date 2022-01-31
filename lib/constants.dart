import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joes_pizza/model/package.dart';
import 'package:joes_pizza/model/pizza.dart';
import 'package:joes_pizza/screen/home/components/detail/detail_pizza.dart';
import 'package:joes_pizza/size_config.dart';

import 'cubit/counter_cubit.dart';
import 'model/grid.dart';
import 'screen/home/components/special_offre_card.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
final headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
const defaultDuration = Duration(milliseconds: 250);
const kAnimationDuration = Duration(milliseconds: 200);
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}

List<Pizza> home_items = [
  Pizza(
      title: "Pizza",
      subtitle: "pizza",
      logo_path: 'assets/images/pizza_2.jpg',
      image_path: '/pizza'),
  Pizza(
      title: "Sandwich",
      subtitle: "sandwich",
      logo_path: 'assets/images/sandwich.jpg',
      image_path: '/sandwich'),
  Pizza(
      title: "Boissons",
      subtitle: "coca",
      logo_path: 'assets/images/coca.png',
      image_path: '/boison'),
  Pizza(
      title: "entrée",
      subtitle: "entrée",
      logo_path: 'assets/icons/entre.jpg',
      image_path: '/entre')
];
List<ModelGrid> promo = [
  ModelGrid(
    title: "due (pizza+boison)",
    subtitle: "due",
    logo_path: 'assets/images/pizza_2.jpg',
    image_path: '/pizza',
    path: [1],
  ),
  ModelGrid(
    title: "trio",
    subtitle: "trio",
    logo_path: 'assets/images/sandwich.jpg',
    image_path: '/boison',
    path: [2],
  ),
];

List<SpecialOfferCard> pizza_items = [
  SpecialOfferCard(
      image: 'assets/images/pizza_2.jpg',
      category: "pop",
      numOfBrands: 15,
      press: (context) => {
            // BlocProvider.of<CounterCubit>(context).checkk(20, 0),
            BlocProvider.of<CounterCubit>(context).increment(0, 'pop'),
            Navigator.pushNamed(context, FoodDetailsPage.routeName)
          },
      pro: 1),
  SpecialOfferCard(
      image: 'assets/images/pizza_2.jpg',
      category: "Thon",
      numOfBrands: 11,
      press: (context) => {
            BlocProvider.of<CounterCubit>(context).increment(0, 'thon'),
            Navigator.pushNamed(context, FoodDetailsPage.routeName)
          },
      pro: 2),
  SpecialOfferCard(
      image: 'assets/images/pizza_2.jpg',
      category: "Fromage",
      numOfBrands: 9,
      press: (context) => {
            BlocProvider.of<CounterCubit>(context).increment(0, 'Fromagee'),
            Navigator.pushNamed(context, FoodDetailsPage.routeName),
          },
      pro: 3),
  SpecialOfferCard(
      image: 'assets/images/pizza_2.jpg',
      category: "Scellian",
      numOfBrands: 9,
      press: (context) => {
            BlocProvider.of<CounterCubit>(context).increment(0, 'Scellian'),
            Navigator.pushNamed(context, FoodDetailsPage.routeName),
          },
      pro: 3),
  SpecialOfferCard(
      image: 'assets/images/pizza_2.jpg',
      category: "Fruit de mer",
      numOfBrands: 9,
      press: (context) => {
            BlocProvider.of<CounterCubit>(context).increment(0, 'Fruit de mer'),
            Navigator.pushNamed(context, FoodDetailsPage.routeName),
          },
      pro: 3)
];

import 'package:flutter/material.dart';
import 'package:joes_pizza/model/pizza.dart';
import 'package:joes_pizza/size_config.dart';

import 'model/grid.dart';

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
    path: [1, 1],
  ),
  ModelGrid(
      title: "trio",
      subtitle: "trio",
      logo_path: 'assets/images/sandwich.jpg',
      image_path: '/boison'),
];

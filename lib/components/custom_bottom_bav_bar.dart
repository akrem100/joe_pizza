import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joes_pizza/route.dart';
import 'package:joes_pizza/screen/home/home_screen.dart';
import 'package:joes_pizza/screen/promotion/screen_promotion.dart';

import '../../constants.dart';
import '../../enum.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Image.asset('assets/icons/pizza.png'),
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home_Screen()),
                ),
              ),
              IconButton(
                icon: new Image.asset('assets/icons/pro.png'),
                color: MenuState.promotion == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () {
                  Navigator.pushNamed(context, Promotion_Screen.routeName);
                },
              ),
              IconButton(
                icon: new Image.asset('assets/icons/alert.png'),
                color: MenuState.panier == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () {},
              ),
              IconButton(
                  icon: new Image.asset('assets/icons/panier.jpg'),
                  color: MenuState.panier == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                  onPressed: () => {}),
            ],
          )),
    );
  }
}

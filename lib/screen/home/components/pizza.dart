import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joes_pizza/model/pizza.dart';
import 'package:joes_pizza/screen/home/components/special_offre_card.dart';
import 'package:joes_pizza/screen/home/home_screen.dart';

import '../../../cubit/counter_cubit.dart';
import '../../../size_config.dart';
import 'detail/detail_pizza.dart';

class Pizza extends StatefulWidget {
  static String routeName = "/pizza";

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    List<SpecialOfferCard> home_items = [
      SpecialOfferCard(
          image: 'assets/images/pizza_2.jpg',
          category: "pop",
          numOfBrands: 15,
          press: () => {
                // BlocProvider.of<CounterCubit>(context).checkk(20, 0),
                BlocProvider.of<CounterCubit>(context).increment(0, 'pop'),
                Navigator.pushNamed(context, FoodDetailsPage.routeName)
              },
          pro: 1),
      SpecialOfferCard(
          image: 'assets/images/pizza_2.jpg',
          category: "Thon",
          numOfBrands: 11,
          press: () => {
                BlocProvider.of<CounterCubit>(context).increment(0, 'thon'),
                Navigator.pushNamed(context, FoodDetailsPage.routeName)
              },
          pro: 2),
      SpecialOfferCard(
          image: 'assets/images/pizza_2.jpg',
          category: "Fromage",
          numOfBrands: 9,
          press: () => {
                BlocProvider.of<CounterCubit>(context).increment(0, 'Fromagee'),
                Navigator.pushNamed(context, FoodDetailsPage.routeName),
              },
          pro: 3),
      SpecialOfferCard(
          image: 'assets/images/pizza_2.jpg',
          category: "Scellian",
          numOfBrands: 9,
          press: () => {
                BlocProvider.of<CounterCubit>(context).increment(0, 'Fromagee'),
                Navigator.pushNamed(context, FoodDetailsPage.routeName),
              },
          pro: 3),
      SpecialOfferCard(
          image: 'assets/images/pizza_2.jpg',
          category: "Fruit de mer",
          numOfBrands: 9,
          press: () => {
                BlocProvider.of<CounterCubit>(context).increment(0, 'Fromagee'),
                Navigator.pushNamed(context, FoodDetailsPage.routeName),
              },
          pro: 3)
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocProvider.value(
        value: CounterCubit(),
        child: CarouselSlider(
          options: CarouselOptions(height: 700.0),
          items: home_items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return InkWell(
                  onTap: () => {
                    i.press?.call(),
                  },
                  child: SpecialOfferCard(
                    image: i.image,
                    category: i.category,
                    numOfBrands: i.numOfBrands,
                    press: i.press,
                    pro: i.pro,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
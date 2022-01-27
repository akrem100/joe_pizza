import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joes_pizza/model/pizza.dart';
import 'package:joes_pizza/screen/home/boison/components/special_offre_card.dart';

import '../../../../cubit/counter_cubit.dart';

import 'detail/detail_boison.dart';

class Boison extends StatefulWidget {
  static String routeName = "/boison";

  @override
  State<Boison> createState() => _BoisonState();
}

class _BoisonState extends State<Boison> with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    List<SpecialOfferCard> boison_items = [
      SpecialOfferCard(
          image: 'assets/images/coca.png',
          category: "coca",
          numOfBrands: 2,
          press: () => {
                BlocProvider.of<CounterCubit>(context).increment(0, 'coca'),
                Navigator.pushNamed(context, BoisonDetailsPage.routeName)
              },
          pro: 1),
      SpecialOfferCard(
          image: 'assets/images/coca.png',
          category: "boga",
          numOfBrands: 2,
          press: () => {
                BlocProvider.of<CounterCubit>(context).increment(0, 'boga'),
                Navigator.pushNamed(context, BoisonDetailsPage.routeName)
              },
          pro: 2),
      SpecialOfferCard(
          image: 'assets/images/coca.png',
          category: "fanta",
          numOfBrands: 2,
          press: () => {
                BlocProvider.of<CounterCubit>(context).increment(0, 'fanta'),
                Navigator.pushNamed(context, BoisonDetailsPage.routeName),
              },
          pro: 3)
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Boison",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocProvider.value(
        value: CounterCubit(),
        child: CarouselSlider(
          options: CarouselOptions(height: 700.0),
          items: boison_items.map((i) {
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

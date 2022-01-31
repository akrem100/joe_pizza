import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../screen/home/boison/components/special_offre_card.dart';
import '../screen/home/components/detail/detail_pizza.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<SpecialOfferCard> list;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 700.0),
      items: list.map((i) {
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
    );
  }
}

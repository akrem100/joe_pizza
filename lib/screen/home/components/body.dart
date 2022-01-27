import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joes_pizza/screen/home/components/pizza.dart';

import '../../../constants.dart';
import '../../../cubit/counter_cubit.dart';
import '../../../model/grid.dart';
import 'card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/icons/images.jpg'),
          ),
        ),
        height: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: home_items.length,
          itemBuilder: (BuildContext context, int index) {
            return CardGrid(
                onPress: () {
                  // BlocProvider.of<CounterCubit>(context).increment(0, 'thon');
                  Navigator.pushNamed(context, home_items[index].image_path);
                },
                title: home_items[index].title,
                logo: home_items[index].logo_path);
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joes_pizza/cubit/counter_cubit.dart';
import 'package:joes_pizza/screen/home/components/pizza.dart';

import '../../../constants.dart';
import '../../home/boison/components/card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(builder: (context, state) {
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
            itemCount: promo.length,
            itemBuilder: (BuildContext context, int index) {
              return BlocProvider.value(
                value: CounterCubit(),
                child: CardGrid(
                    onPress: () {
                      BlocProvider.of<CounterCubit>(context).checkk(20);
                      BlocProvider.of<CounterCubit>(context).add(true);
                      Navigator.pushNamed(context, promo[index].image_path);
                    },
                    title: promo[index].title,
                    logo: promo[index].logo_path),
              );
            },
          ),
        ),
      );
    });
  }
}

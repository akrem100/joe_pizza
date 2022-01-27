import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joes_pizza/cubit/counter_cubit.dart';

import '../../../constants.dart';

import '../../../model/cart.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.orange.withOpacity(1),
                Colors.orange.withOpacity(1),
              ])),
      child: Row(
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[700],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(cart.pizza.logo_path),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              print(state.name);
              return Column(
                children: [
                  Text(
                    cart.pizza.title,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: "number of ${state.name} ${state.valuee}",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

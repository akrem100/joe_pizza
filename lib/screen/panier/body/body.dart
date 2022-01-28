import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joes_pizza/constants.dart';
import 'package:joes_pizza/cubit/counter_cubit.dart';
import 'package:joes_pizza/model/pizza.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child:
            BlocBuilder<CounterCubit, CounterState>(builder: (context, state) {
          return ListView.builder(
            itemCount: state.demoCarts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                key: Key(state.demoCarts[index].type.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  setState(() {
                    state.demoCarts.remove(index);
                    BlocProvider.of<CounterCubit>(context)
                        .decrement(state.demoCarts[index].numOfItems);
                  });
                },
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg"),
                    ],
                  ),
                ),
                child: CartItemCard(cart: state.demoCarts[index]),
              ),
            ),
          );
        }),
      ),
    );
  }
}

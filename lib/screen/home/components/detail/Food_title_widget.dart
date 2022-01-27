import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubit/counter_cubit.dart';

class FoodTitleWidget extends StatelessWidget {
  String productName;
  String productPrice;
  String productHost;

  FoodTitleWidget({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productHost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // Scaffold.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text(state.v.toString()),
        //     action: SnackBarAction(
        //       label: 'Undo',
        //       onPressed: () {
        //         // Some code to undo the change.
        //       },
        //     ),
        //   ),
        // );

        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      productName,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      state.valuee.toString() + "DT ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                // Text(
                //   "Package price ",
                //   style: TextStyle(
                //       fontSize: 20,
                //       color: Color(0xFFa9a9a9),
                //       fontWeight: FontWeight.w400),
                // ),
                // Text(
                //   " state.v.toString()",
                //   style: TextStyle(
                //       fontSize: 20,
                //       color: Color(0xFF1f1f1f),
                //       fontWeight: FontWeight.w400),
                // ),
              ],
            )
          ],
        );
      },
    );
  }
}

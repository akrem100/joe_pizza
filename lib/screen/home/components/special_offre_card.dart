import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/counter_cubit.dart';
import '../../../size_config.dart';
import 'detail/detail_pizza.dart';

class SpecialOfferCard extends StatefulWidget {
  static String routeName = "/specpizza";
  const SpecialOfferCard({
    Key? key,
    required this.press,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.pro,
  }) : super(key: key);
  final Function? press;
  final String image, category;
  final int numOfBrands;
  final int pro;

  @override
  State<SpecialOfferCard> createState() => _SpecialOfferCardState();
}

class _SpecialOfferCardState extends State<SpecialOfferCard>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: SizedBox(
          width: 300,
          height: 500,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(widget.image, height: 500, scale: 1.5),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color(0xFF343434).withOpacity(0.05),
                        Color(0xFF343434).withOpacity(0.05),
                      ])),
                ),
                BlocConsumer<CounterCubit, CounterState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF343434).withOpacity(0.5),
                                  Color(0xFF343434).withOpacity(0.5),
                                ])),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 11),
                          child: Text.rich(TextSpan(
                              style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                  text: widget.category + "\n",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: " Pizza  " +
                                      state.valuee.toString() +
                                      " DT",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ])),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

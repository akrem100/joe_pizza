import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joes_pizza/cubit/counter_cubit.dart';
import 'package:joes_pizza/main.dart';
import 'package:joes_pizza/model/pizza.dart';
import 'package:joes_pizza/screen/home/boison/components/boison.dart';
import 'package:joes_pizza/screen/home/components/special_offre_card.dart';
import 'package:joes_pizza/screen/home/home_screen.dart';
import 'package:joes_pizza/screen/panier/panier_screen.dart';

import '../../../../constants.dart';
import '../../../../model/cart.dart';
import '../../boison/components/detail/detail_boison.dart';

class FoodDetailsPage extends StatefulWidget {
  static String routeName = "/detail";
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage>
    with AutomaticKeepAliveClientMixin {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked7 = false;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive {
    return true;
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  Color getColor2(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.yellow,
            appBar: AppBar(
              title: Text(
                "Pizza",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.yellow,
              elevation: 0,
            ),
            body: Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      'assets/images/pizza_2.jpg',
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    elevation: 1,
                    margin: EdgeInsets.all(5),
                  ),

                  /*  Container(
                    height: 150,
                    child:FoodDetailsSlider(
                        slideImage1: "assets/images/bestfood/ic_best_food_8.jpeg",
                        slideImage2: "assets/images/bestfood/ic_best_food_9.jpeg",
                        slideImage3: "assets/images/bestfood/ic_best_food_10.jpeg"),
       ;
      },
    )           ),*/
                  FoodTitleWidget(
                      productName: state.name.toString(),
                      productPrice: state.valuee.toString() + " DT",
                      productHost: "pizza hut"),
                  PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: TabBar(
                      labelColor: Color(0xFFfd3f40),
                      indicatorColor: Color(0xFFfd3f40),
                      unselectedLabelColor: Color(0xFFa4a1a1),
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      tabs: [
                        Tab(
                          text: 'Food Details',
                        ),
                        Tab(
                          text: 'Food Reviews',
                        ),
                      ], // list of tabs
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Thon(2dt)"),
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked7,
                            onChanged: (bool? value) {
                              int val = 2;

                              if (value == true) {
                                BlocProvider.of<CounterCubit>(context)
                                    .increment(2, state.name);
                              } else {
                                BlocProvider.of<CounterCubit>(context)
                                    .decrement(val);
                                BlocProvider.of<CounterCubit>(context)
                                    .increment(0, state.name);
                              }

                              setState(() {
                                isChecked7 = value!;
                              });
                            },
                          ),
                          Text("Fromage(22dt)"),
                          SizedBox(
                            child: Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor2),
                              value: isChecked1,
                              onChanged: (bool? value4) {
                                int val = 22;
                                if (value4 == true) {
                                  BlocProvider.of<CounterCubit>(context)
                                      .increment(val, state.name);
                                } else {
                                  BlocProvider.of<CounterCubit>(context)
                                      .decrement(val);
                                  BlocProvider.of<CounterCubit>(context)
                                      .increment(0, state.name);
                                }
                                setState(() {
                                  isChecked1 = value4!;
                                });
                              },
                            ),
                          ),
                          Text("Thon(2dt)"),
                          SizedBox(
                            child: Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value3) {
                                int val = 2;
                                if (value3 == true) {
                                  BlocProvider.of<CounterCubit>(context)
                                      .increment(val, state.name);
                                } else {
                                  BlocProvider.of<CounterCubit>(context)
                                      .decrement(val);
                                  BlocProvider.of<CounterCubit>(context)
                                      .increment(0, state.name);
                                }
                                setState(() {
                                  isChecked = value3!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Thon(2dt)"),
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked2,
                            onChanged: (bool? value2) {
                              int val = 2;
                              if (value2 == true) {
                                BlocProvider.of<CounterCubit>(context)
                                    .increment(val, state.name);
                              } else {
                                BlocProvider.of<CounterCubit>(context)
                                    .decrement(val);
                                BlocProvider.of<CounterCubit>(context)
                                    .increment(0, state.name);
                              }
                              setState(() {
                                isChecked2 = value2!;
                              });
                            },
                          ),
                          Text("champ"),
                          SizedBox(
                            child: Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked4,
                              onChanged: (bool? value2) {
                                int val = 2;
                                if (value2 == true) {
                                  BlocProvider.of<CounterCubit>(context)
                                      .increment(val, state.name);
                                } else {
                                  BlocProvider.of<CounterCubit>(context)
                                      .decrement(val);
                                  BlocProvider.of<CounterCubit>(context)
                                      .increment(0, state.name);
                                }
                                setState(() {
                                  isChecked4 = value2!;
                                });
                              },
                            ),
                          ),
                          Text("pop (2dt)"),
                          SizedBox(
                            child: Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked5,
                              onChanged: (bool? value1) {
                                int val = 2;
                                if (value1 == true) {
                                  // BlocProvider.of<CounterCubit>(context)
                                  //     .checkk(20, 0);
                                  BlocProvider.of<CounterCubit>(context)
                                      .increment(val, state.name);
                                  BlocProvider.of<CounterCubit>(context)
                                      .add(false);
                                } else {
                                  BlocProvider.of<CounterCubit>(context)
                                      .decrement(val);
                                  BlocProvider.of<CounterCubit>(context)
                                      .increment(0, state.name);
                                  BlocProvider.of<CounterCubit>(context)
                                      .add(true);
                                }
                                setState(() {
                                  isChecked5 = value1!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 150,
                    child: TabBarView(
                      children: [
                        Container(
                          color: Colors.white24,
                          child: DetailContentMenu(),
                        ),
                        Container(
                          color: Colors.white24,
                          child: DetailContentMenu(),
                        ), // class name
                      ],
                    ),
                  ),
                  AddToCartMenu(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class AddToCartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              width: 200.0,
              height: 45.0,
              decoration: new BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: BlocProvider.value(
                value: CounterCubit(),
                child: Center(
                  child: InkWell(
                    onTap: () => {
                      BlocProvider.of<CounterCubit>(context)
                          .pan(Cart(pizza: home_items[0], numOfItems: 2)),
                      Navigator.pushNamed(context, MyStatefulWidget.routeName),
                    },
                    child: Text(
                      'Add',
                      style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.',
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            height: 1.50),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

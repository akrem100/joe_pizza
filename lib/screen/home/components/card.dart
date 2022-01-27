import 'package:flutter/material.dart';

import 'package:joes_pizza/screen/home/components/pizza.dart';
import 'package:joes_pizza/screen/home/components/pizza.dart';
import 'package:joes_pizza/screen/home/components/pizza.dart';
import 'package:joes_pizza/screen/home/components/pizza.dart';

class CardGrid extends StatefulWidget {
  final String title;

  final String logo;
  final GestureTapCallback onPress;

  CardGrid({
    Key? key,
    required this.title,
    required this.logo,
    required this.onPress,
  }) : super(key: key);

  @override
  State<CardGrid> createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: FlatButton(
          onPressed: widget.onPress,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(1, 4, 4, 15),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      widget.logo,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: GestureDetector(
                onTap: () {
                  // BlocProvider.of<CounterCubit>(context).increment(0, 'pop');
                  Navigator.pushNamed(context, Pizza.routeName);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child: SizedBox()),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF343009).withOpacity(0.5),
                                  Color(0xFF343009).withOpacity(0.5),
                                ])),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text.rich(
                            TextSpan(
                                style: TextStyle(color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: widget.title,
                                    style: const TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

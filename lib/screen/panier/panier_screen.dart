import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joes_pizza/cubit/counter_cubit.dart';
import 'package:joes_pizza/screen/panier/body/body.dart';

import 'body/check_out_card.dart';

class PanierScreen extends StatefulWidget {
  static String routeName = "/panier";
  @override
  _PanierScreenState createState() => _PanierScreenState();
}

class _PanierScreenState extends State<PanierScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }
}

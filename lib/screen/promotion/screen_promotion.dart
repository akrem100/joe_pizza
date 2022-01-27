import 'package:flutter/material.dart';
import 'package:joes_pizza/screen/promotion/components/body.dart';

import '../../components/custom_bottom_bav_bar.dart';
import '../../enum.dart';

class Promotion_Screen extends StatelessWidget {
  static String routeName = "/promotion";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

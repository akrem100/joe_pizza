import 'package:flutter/material.dart';

import '../../components/custom_bottom_bav_bar.dart';
import '../../enum.dart';
import 'components/body.dart';

class Home_Screen extends StatelessWidget {
  static String routeName = "/dashboard";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

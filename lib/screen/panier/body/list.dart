import 'package:flutter/material.dart';

class Lisst extends StatefulWidget {
  static String routeName = "/yourpan";
  @override
  _LisstState createState() => _LisstState();
}

class _LisstState extends State<Lisst> {
  @override
  Widget build(BuildContext context) {
    TextEditingController cont = new TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: cont,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Voucher',
                ),
              ),
            ),
          ),
          Container(
            child: Text(cont.text),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ShoppingBox extends StatelessWidget {
  ShoppingBox({this.boxImage});
  final String boxImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black,
      ),
      padding: EdgeInsets.all(0.0),
      child: Image.asset(boxImage),
      margin: EdgeInsets.all(10.0),
      height: 200.0,
    );
  }
}

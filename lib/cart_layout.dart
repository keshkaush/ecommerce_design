import 'package:flutter/material.dart';
import 'shopping_cart.dart';

class CardLayout extends StatelessWidget {
  CardLayout({this.inCartImage, this.inCartPrice});
  final inCartImage;
  final inCartPrice;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          inCartImage,
          height: 100.0,
          width: 100.0,
        ),
        Text(
          inCartPrice,
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

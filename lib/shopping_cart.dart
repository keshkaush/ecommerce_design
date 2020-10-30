import 'package:flutter/material.dart';

List<Widget> finalCart = [];

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MY SHOPPING CART'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: SizedBox(
                height: 25.0,
                width: double.infinity,
                child: Text(
                  'My Cart',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Column(
              children: finalCart,
            ),
            Container(
              child: Center(
                  child: Text('Proceed to Buy',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w200))),
              decoration: BoxDecoration(
                color: Color(0xfff3ce71),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 60.0,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}

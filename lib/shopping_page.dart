import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'shopping_box.dart';
import 'status_button.dart';
import 'cart_layout.dart';
import 'shopping_cart.dart';

class ShoppingPage extends StatefulWidget {
  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Container(
                  height: 40.0,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 23.0,
                        ),
                      ),
                      Icon(FontAwesomeIcons.search)
                    ],
                  )),
            ),
          ]),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: statusColumn('Kids'),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0), child: statusColumn('Boys')),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: statusColumn('Men'),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0), child: statusColumn('Women')),
            ],
          ),
          SizedBox(height: 5.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
            ),
            child: Image.asset(
              'images/logo.jpg',
            ),
            margin: EdgeInsets.all(10.0),
            height: 170.0,
            width: double.infinity,
          ),
          SizedBox(
            height: 20.0,
            child: Divider(
              thickness: 5.0,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.black,
            ),
          ),
          SizedBox(
            child: Text(
              'Recent Products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
            child: Divider(
              thickness: 5.0,
              indent: 60.0,
              endIndent: 60.0,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onDoubleTap: () {
                    addingToCart(2);
                  },
                  child: ShoppingBox(
                    boxImage: 'images/product2.png',
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onDoubleTap: () {
                    addingToCart(1);
                  },
                  child: ShoppingBox(
                    boxImage: 'images/product1.png',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onDoubleTap: () {
                    addingToCart(3);
                  },
                  child: ShoppingBox(
                    boxImage: 'images/product3.png',
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onDoubleTap: () {
                    addingToCart(4);
                  },
                  child: ShoppingBox(
                    boxImage: 'images/product4.gif',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void addingToCart(int number) {
    setState(() {
      finalCart.add(
        CardLayout(
          inCartImage: 'images/product$number.png',
          inCartPrice: '\$19.9',
        ),
      );
    });
  }

  Column statusColumn(String statuslabel) {
    return Column(
      children: [
        StatusButton(),
        SizedBox(
          height: 3.0,
        ),
        Text(statuslabel),
      ],
    );
  }
}

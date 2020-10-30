import 'package:ecommerce_design/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'shopping_page.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
        accentColor: Colors.black,
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset('images/logo.jpg'),
          centerTitle: true,
          leading: GestureButton(icon: FontAwesomeIcons.bars),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureButton(
                icon: FontAwesomeIcons.shoppingBag,
              ),
            ),
          ],
        ),
        body: ShoppingPage(),
      ),
    );
  }
}

class GestureButton extends StatelessWidget {
  GestureButton({this.icon, this.onPress});
  final IconData icon;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ShoppingCart()),
        );
      },
      child: Icon(
        icon,
        size: 30.0,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StatusButton extends StatefulWidget {
  StatusButton({this.inImage, this.onPress});
  final inImage;
  final Function onPress;
  @override
  _StatusButtonState createState() => _StatusButtonState();
}

class _StatusButtonState extends State<StatusButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(3.0),
      onPressed: () {},
      fillColor: Colors.black,
      child: Image.asset('images/logo.jpg'),
      constraints: BoxConstraints.tightFor(
        width: 75.0,
        height: 75.0,
      ),
      shape: CircleBorder(),
    );
  }
}

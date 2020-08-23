import 'package:flutter/material.dart';

class CustomAppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("assets/images/Ali.jpg"),
        ),
        FlatButton(
          onPressed: () => {},
          child: Icon(
            Icons.insert_chart,
            size: 35.0,
          ),
        ),
      ],
    );
  }
}

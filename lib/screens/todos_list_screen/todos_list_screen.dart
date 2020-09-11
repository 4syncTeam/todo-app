import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';

import './body.dart';

class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Container(
          height: 42,
          decoration: BoxDecoration(
            color: kPrimaryColorDarken,
            borderRadius: BorderRadius.all(Radius.circular(36)),
          ),
          child: TextField(
            textInputAction: TextInputAction.search,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              filled: true,
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Body(),
    );
  }
}

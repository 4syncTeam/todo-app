import 'package:flutter/material.dart';
import 'package:todo_app/constant/colors.dart';

class CustomBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 35, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RawMaterialButton(
            onPressed: () {},
            fillColor: Colors.transparent,
            padding: EdgeInsets.all(10),
            shape: CircleBorder(),
            elevation: 0,
            disabledElevation: 0,
            focusElevation: 0,
            highlightElevation: 0,
            hoverElevation: 0,
            child: Icon(
              Icons.home,
              color: kMidnightBlue,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: kPolishedPine.withOpacity(0.4),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(0.5, 1.5),
                ),
              ],
            ),
            child: RawMaterialButton(
              onPressed: () {},
              fillColor: kPolishedPine,
              padding: EdgeInsets.all(10),
              shape: CircleBorder(),
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              child: Icon(
                Icons.add,
                color: kWhite,
                size: 32,
              ),
            ),
          ),
          RawMaterialButton(
            onPressed: () {},
            fillColor: Colors.transparent,
            padding: EdgeInsets.all(10),
            shape: CircleBorder(),
            elevation: 0,
            disabledElevation: 0,
            focusElevation: 0,
            highlightElevation: 0,
            hoverElevation: 0,
            child: Icon(
              Icons.person,
              color: kMidnightBlue,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoapp/constant/routes.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildFlatButton(context, 'Add task', ADD_TASK_ROUTE),
          buildFlatButton(context, 'Auth', AUTH_ROUTE),
        ],
      ),
    );
  }

  FlatButton buildFlatButton(BuildContext context, String text, String route) {
    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(text),
    );
  }
}

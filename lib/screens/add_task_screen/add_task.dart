import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import 'body.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () => {},
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: AddTaskBody(),
    );
  }
}

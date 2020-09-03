import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add');
          },
          child: Text('Add task'),
        ),
      ),
    );
  }
}

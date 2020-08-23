import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0.0),
      leading: Checkbox(
        value: false,
        onChanged: (value) => {},
      ),
      title: Text(
        "Watch End Game",
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
      subtitle: Text("23:45"),
    );
  }
}

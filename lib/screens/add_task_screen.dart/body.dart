import 'package:flutter/material.dart';

class AddTaskBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.indigoAccent[700],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 65),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Add a Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Add a new task to your ToDo list by entering your task details below',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          // padding: const EdgeInsets.fromLTRB(35, 95, 0, 30),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 90),
          child: Container(
            height: 450,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 1.5),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import './widget/task_detail.dart';

class AddTaskBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 140,
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 90),
              alignment: Alignment.topCenter,
              child: TaskDetail(),
            ),
          ],
        ),
      ),
    );
  }
}

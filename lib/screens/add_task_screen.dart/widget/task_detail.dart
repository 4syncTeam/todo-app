import 'package:flutter/material.dart';

class TaskDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            entrySection('Title', 'Enter task title'),
            SizedBox(height: 25),
            entrySection('Descrption', 'Enter task description'),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Date'),
                    RaisedButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2019),
                          lastDate: DateTime(2020),
                        );
                      },
                      child: Text('Pick a Date'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Time'),
                    RaisedButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2019),
                          lastDate: DateTime(2020),
                        );
                      },
                      child: Text('Set a Time'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            entrySection('Tag', 'Select a tag for your task'),
            SizedBox(height: 25),
            Container(
              width: 180,
              child: RaisedButton(
                color: Colors.indigoAccent[700],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                onPressed: () => {},
                child: Text(
                  'Add task',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column entrySection(String text, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constant/colors.dart';

class TaskDetail extends StatefulWidget {
  @override
  _TaskDetailState createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  DateTime _selectedDate;
  TimeOfDay _selectedTime;
  DateFormat _dateFormat = DateFormat("yyyy-MM-dd");

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
      child: Container(
        // padding: const EdgeInsets.all(25.0),
        padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              entrySection('Title', 'Enter task title', false),
              SizedBox(height: 25),
              entrySection('Descrption', 'Enter task description', true),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  pickDateSection(context),
                  pickTimeSection(context),
                ],
              ),
              SizedBox(height: 20),
              entrySection('Tag', 'Select a tag for your task', false),
              SizedBox(height: 25),
              addTaskBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget entrySection(String text, String hintText, bool isMultiLine) {
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
          maxLines: isMultiLine ? null : 1,
          keyboardType: isMultiLine ? TextInputType.multiline : null,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }

  Widget pickDateSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Date'),
        RaisedButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2019),
              lastDate: DateTime(2022),
            ).then(
              (value) {
                setState(() {
                  _selectedDate = value;
                });
              },
            );
          },
          child: _selectedDate == null
              ? Text('Pick a Date')
              : Text(_dateFormat.format(_selectedDate)),
        ),
      ],
    );
  }

  Widget pickTimeSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Time (optional)'),
        RaisedButton(
          onPressed: () {
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            ).then(
              (value) {
                setState(() {
                  _selectedTime = value;
                });
              },
            );
          },
          child: _selectedTime == null
              ? Text('Set a Time')
              : Text(_selectedTime.hour.toString() +
                  " : " +
                  _selectedTime.minute.toString()),
        ),
      ],
    );
  }

  Widget addTaskBtn() {
    return Container(
      width: 180,
      child: RaisedButton(
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        onPressed: () => {},
        child: Text(
          'Add task',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

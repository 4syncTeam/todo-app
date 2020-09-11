import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';
import 'package:todoapp/models/todo_model.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTitle(),
          buildList(),
        ],
      ),
    );
  }

  Widget buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: Text(
        'Month name',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 28,
        ),
      ),
    );
  }

  Widget buildList() {
    return Expanded(
      child: ListView.separated(
        itemCount: DUMMY_LIST.length,
        separatorBuilder: (context, index) => Divider(
          height: 4,
          color: kPrimaryColor.withOpacity(0.6),
        ),
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildItemIcon(),
                buildItemDetails(index),
                Spacer(),
                buildItemDate(index),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildItemDate(int index) {
    return Container(
      padding: EdgeInsets.only(right: 30),
      child: Text(
        '${DUMMY_LIST[index].dateTime.month} / ${DUMMY_LIST[index].dateTime.day}',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget buildItemDetails(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DUMMY_LIST[index].title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          DUMMY_LIST[index].description,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget buildItemIcon() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Icon(Icons.check_circle),
    );
  }
}

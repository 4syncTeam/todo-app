import 'package:flutter/material.dart';

import 'widgets/list_container.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hey, Ali",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Main focus for today?",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 35.0),
          Container(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ListContainer();
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

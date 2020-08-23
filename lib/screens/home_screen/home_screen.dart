import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen/widgets/list_container.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: CircleAvatar(
                  child: Image(
                    image: AssetImage("assets/images/Ali.jpg"),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () => {},
                child: Icon(
                  Icons.insert_chart,
                  size: 35.0,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
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
            color: Colors.blue,
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

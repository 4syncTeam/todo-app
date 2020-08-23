import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen/body.dart';

import 'package:todo_app/widgets/appBar.dart';

import 'custom_bottom_app_bar.dart';

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
          title: CustomAppBarTitle(),
        ),
      ),
      body: HomeBody(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: CustomBottomAppBar(),
      ),
    );
  }
}

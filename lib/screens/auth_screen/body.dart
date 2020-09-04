import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../constant/colors.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      color: kPrimaryColor,
      height: deviceSize.height,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 40),
              child: buildTitle(),
            ),
          ),
          buildSignUp(),
          buildLogin(),
        ],
      ),
    );
  }

  Widget buildLogin() {
    return GestureDetector(
      onTap: () {
        print('login Action ');
      },
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Log In',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSignUp() {
    return GestureDetector(
      onTap: () {
        print('signup Action');
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.arrow_forward,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Container(
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // this is a placeholder for our logo
          Icon(
            Icons.today,
            color: Colors.grey[300],
            size: 75,
          ),
          Text(
            'Todo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 64,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

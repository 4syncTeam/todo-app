import 'package:flutter/material.dart';
import 'package:todoapp/screens/report_screen/widget/payment_card.dart';

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: SafeArea(
          child: Container(
            height: kToolbarHeight,
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.help_outline),
                Row(
                  children: [
                    Text('Calendar'),
                    Text('List'),
                  ],
                ),
                Icon(Icons.add),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 50,
              color: Colors.blue,
              padding: EdgeInsets.fromLTRB(16, 0, 12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('October'),
                  Container(
                    // color: Colors.red,
                    // width: 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Calendar
            Container(),
            Container(
              height: 32,
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.blue,
              child: Text('Dates and prices are estimates and may vary'),
            ),

            Container(
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    color: Colors.blue,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(boxShadow: [BoxShadow(blurRadius: 35)]),
                    height: MediaQuery.of(context).size.height,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          thickness: 2,
                          indent: 12,
                          endIndent: 12,
                          height: 2,
                          color: Colors.grey,
                        );
                      },
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return PaymentCard(index: index, count: 10);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

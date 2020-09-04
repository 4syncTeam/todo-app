import 'package:flutter/material.dart';

enum Index {
  firstElement,
  lastElement,
}

class PaymentCard extends StatelessWidget {
  final int index;
  final int count;
  const PaymentCard({Key key, this.index, this.count}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: cornersRounded(index),
      ),
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: cornersRounded(index),
              color: Colors.grey[300],
            ),
            child: Text('30 october'),
          ),
          Expanded(
              child: Container(
            child: Row(
              children: [
                Icon(Icons.phone_iphone),
                Column(
                  children: [
                    Text('Spotify'),
                    Text('\$15.00'),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  cornersRounded(int i) {
    if (i == 0) {
      return BorderRadius.only(
          topLeft: Radius.circular(12), topRight: Radius.circular(12));
    } else if (i == count) {
      return BorderRadius.only(
          bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12));
    }
    return BorderRadius.zero;
  }
}

import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';

class CustomUnderlineHeading extends StatelessWidget {
  final String text;

  const CustomUnderlineHeading({ this.text});

  @override
  Widget build(BuildContext context) {
    return Container(height: 24,
      child: Stack(
        children: [
          Padding(padding: EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          Positioned(bottom: 0,
              left: 0,
              right: 0,
              child: Container(height: 7,
                margin: EdgeInsets.only(right: kDefaultPadding / 4),
                color: kPrimaryColor.withOpacity(0.2),))
        ],
      ),);
  }
}

import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: kDefaultPadding*2,right: kDefaultPadding*2, bottom: kDefaultPadding),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(offset: Offset(0,-10), blurRadius: 50, color: kPrimaryColor.withOpacity(0.38))]
      ),
      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
        IconButton(icon: Icon(Icons.local_florist,color: kPrimaryColor,)),
        IconButton(icon: Icon(Icons.ac_unit,color: kPrimaryColor,)),IconButton(icon: Icon(Icons.person,color: kPrimaryColor,))
      ],),
    );
  }
}
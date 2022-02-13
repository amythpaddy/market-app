import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';
import 'package:market_app/screens/details/components/iconCard.dart';

class DetailSidebar extends StatelessWidget {
  const DetailSidebar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
      child: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(icon: Icon(Icons.keyboard_backspace,),
            onPressed: () {
              Navigator.pop(context);
            },
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          ),
        ),
        Spacer(),
        IconCard(icon: EvaIcons.sun,onTap:(){}),
        IconCard(icon: EvaIcons.thermometer,onTap:(){}),
        IconCard(icon: EvaIcons.droplet,onTap:(){}),
        IconCard(icon: EvaIcons.repeat,onTap:(){})
      ],),
    ),);
  }
}
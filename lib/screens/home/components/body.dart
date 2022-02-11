import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';
import 'package:market_app/screens/home/components/customUnderlineHeading.dart';
import 'package:market_app/screens/home/components/headerWithSearchBox.dart';
import 'package:market_app/screens/home/components/titleWithMoreButton.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
        children: [
          headerWithSearchBar(size, context),
          TitleWithMoreButton(title: "Recommended",onMorePressed: (){},)
        ],
      ),
    );
  }



}



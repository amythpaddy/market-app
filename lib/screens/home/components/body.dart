import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';
import 'package:market_app/screens/home/components/customUnderlineHeading.dart';
import 'package:market_app/screens/home/components/featureProductList.dart';
import 'package:market_app/screens/home/components/featuredCard.dart';
import 'package:market_app/screens/home/components/headerWithSearchBox.dart';
import 'package:market_app/screens/home/components/recommendationList.dart';
import 'package:market_app/screens/home/components/recommendedItemCard.dart';
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
          TitleWithMoreButton(
            title: "Recommended Products", onMorePressed: () {},),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: RecommendationList(),
          ),
          TitleWithMoreButton(
            title: "Featured Products", onMorePressed: () {},),
          FeatureProductList(),
          SizedBox(height: kDefaultPadding*2,)
        ],
      ),
    );
  }
}





import 'package:flutter/material.dart';
import 'package:market_app/screens/home/components/featuredCard.dart';

class FeatureProductList extends StatelessWidget {
  const FeatureProductList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedItemCard(image: "assets/images/bottom_img_1.png",onPress:(){}),
          FeaturedItemCard(image: "assets/images/bottom_img_2.png",onPress:(){}),
        ],
      ),
    );
  }
}

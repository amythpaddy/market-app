import 'package:flutter/material.dart';
import 'package:market_app/constants/navigationPath.dart';
import 'package:market_app/screens/home/components/recommendedItemCard.dart';

class RecommendationList extends StatelessWidget {
  const RecommendationList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RecommendedItemCard(image: 'assets/images/recommended_image_1.png',name: 'product 1',country: 'Russia',price: '450',onPress: (){Navigator.pushNamed(context, kNavigationDetail);},),
        RecommendedItemCard(image: 'assets/images/recommended_image_2.png',name: 'product 2',country: 'France',price: '650',onPress: (){Navigator.pushNamed(context, kNavigationDetail);}),
        RecommendedItemCard(image: 'assets/images/recommended_image_3.png',name: 'product 3',country: 'Italy',price: '350',onPress: (){Navigator.pushNamed(context, kNavigationDetail);}),
      ],
    );
  }
}
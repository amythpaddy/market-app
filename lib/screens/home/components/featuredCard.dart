import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';

class FeaturedItemCard extends StatelessWidget {
  const FeaturedItemCard({
    Key key, this.image, this.onPress,
  }) : super(key: key);

  final String image;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: size.width*.8,
        height: 185,
        margin: EdgeInsets.only(left: kDefaultPadding,top: kDefaultPadding/2, bottom: kDefaultPadding/2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
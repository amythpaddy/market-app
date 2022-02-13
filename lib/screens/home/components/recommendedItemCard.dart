import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';

class RecommendedItemCard extends StatelessWidget {
  const RecommendedItemCard({ this.name, this.country, this.price, this.image, this.onPress});
final String name;
final String country;
final String price;
final String image;
final Function onPress;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(width: size.width * 0.4,
      margin: EdgeInsets.only(left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
      ),
      child: Column(children: [
        Image.asset(image),
        GestureDetector(
          onTap: onPress,
          child: Container(padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ]
            ),
            child: Row(
              children: [RichText(text: TextSpan(children: [TextSpan(
                  text: "$name\n".toUpperCase(), style: Theme
                  .of(context)
                  .textTheme
                  .button),
                TextSpan(text: country.toUpperCase(),
                    style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),))
              ])), Spacer(), Text('\$$price', style: Theme
                  .of(context)
                  .textTheme
                  .button
                  .copyWith(color: kPrimaryColor),)
              ],),),
        )
      ],),);
  }
}

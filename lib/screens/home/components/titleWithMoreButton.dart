import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';
import 'package:market_app/screens/home/components/customUnderlineHeading.dart';

class TitleWithMoreButton extends StatelessWidget {

  final String title;
  final Function onMorePressed;

  const TitleWithMoreButton({ this.title, this.onMorePressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          CustomUnderlineHeading(text: title,),
          Spacer(),
          FlatButton(
            child: Text("More", style: TextStyle(color: Colors.white),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed: onMorePressed,)
        ],
      ),
    );
  }
}

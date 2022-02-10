import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';

Container headerWithSearchBar(Size size, BuildContext context) {
  return Container(
    height: size.height * 0.2,
    margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
    child: Stack(
      children: [
        Container(
          height: size.height * 0.2 - 27,
          padding: EdgeInsets.only(left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding),
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36))
          ),
          child: Row(children: [Text('Hi, Amyth!',
            style: Theme
                .of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
            Spacer(),
            Image.asset("assets/images/logo.png")
          ],),),
        Positioned(bottom: 0,
            left: 0,
            right: 0,
            child: Container(height: 54,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(.25)),
                  ]),
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: kPrimaryColor.withOpacity(0.25),),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search, color: kPrimaryColor.withOpacity(0.25),)
                ),
              ),))
      ],
    ),
  );
}
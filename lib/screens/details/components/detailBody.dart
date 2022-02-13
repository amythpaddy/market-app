import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';
import 'package:market_app/constants/navigationPath.dart';
import 'package:market_app/screens/details/components/detailImage.dart';
import 'package:market_app/screens/details/components/iconCard.dart';
import 'package:market_app/screens/details/components/sidebar.dart';
import 'package:market_app/screens/details/components/titleAndPrice.dart';

class DetailBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
        children: [SizedBox(
          height: size.height * .8,
          child: Row(
            children: [DetailSidebar(),
              DetailImage(image: 'assets/images/img.png'),
            ],
          ),
        ),
          TitleAndPrice(title: 'Angelica', country: 'Russia', price: '400',),
          Row(children: [
            SizedBox(width: size.width / 2,
              height: 84,
              child: FlatButton(onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
                child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 16),),
                color: kPrimaryColor,),),
            Expanded(child: FlatButton(onPressed: (){},child: Text('Description'),),)
          ],)
        ],
      ),
    );
  }
}
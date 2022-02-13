
import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';

class IconCard extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  const IconCard({Key key, this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(height: 62,
        width: 62,
        margin: EdgeInsets.symmetric(vertical: size.height*.03),
        decoration: BoxDecoration(color: kBackgroundColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [BoxShadow(offset: Offset(0, 10),
                blurRadius: 20,
                color: kPrimaryColor.withOpacity(0.22)),
              BoxShadow(offset: Offset(-15,-15),blurRadius: 20,color: Colors.white)
            ]),child: Icon(icon,color: kPrimaryColor,),)
    );
  }
}

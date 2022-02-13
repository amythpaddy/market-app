import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';

class DetailImage extends StatelessWidget {
  final String image;

  const DetailImage({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      decoration: BoxDecoration(image: DecorationImage(
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
          image: AssetImage(image)
      ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(63),
              bottomLeft: Radius.circular(63)),
          boxShadow: [
            BoxShadow(offset: Offset(0, 10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(.3))
          ]),
    );
  }
}


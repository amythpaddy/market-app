import 'package:flutter/material.dart';
import 'package:market_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(),
    );
  }

  AppBar buildAppBar() => AppBar(elevation:0,
    leading: IconButton(icon: Icon(Icons.menu,),
      onPressed: (){},),);
}

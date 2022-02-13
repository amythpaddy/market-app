import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';
import 'package:market_app/screens/home/components/body.dart';
import 'package:market_app/screens/home/components/bottomNavigation.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() => AppBar(elevation:0,
    leading: IconButton(icon: Icon(Icons.menu,),
      onPressed: (){},),);
}



import 'package:flutter/material.dart';
import 'package:market_app/constants/constants.dart';
import 'package:market_app/constants/navigationPath.dart';
import 'package:market_app/screens/details/detailScreen.dart';
import 'package:market_app/screens/home/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market App',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        kNavigationHome:(_)=>HomeScreen(),
        kNavigationDetail:(_)=>DetailScreen()
      },
    );
  }
}

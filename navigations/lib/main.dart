import 'package:flutter/material.dart';
import 'package:navigations/screen/home_screen.dart';
import 'package:navigations/screen/route_one_screen.dart';
import 'package:navigations/screen/route_three_screen.dart';
import 'package:navigations/screen/route_two_screen.dart';

const HOME_ROUTE = '/';
const THREE_SCREEN = '/three';

void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      initialRoute: '/',
      // www.google.com ->  www.google.com/
      routes: {
        HOME_ROUTE: (context) => HomeScreen(),
        '/one' : (context) => RouteOneScreen(),
        '/two' : (context) => RouteTwoScreen(),
        THREE_SCREEN : (context) => RouteThreeScreen(),
      },
    ),
  );
}

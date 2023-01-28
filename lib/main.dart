import 'package:flutter/material.dart';
import 'package:route_app/view/dashboardsharedpreferences.dart';
import 'package:route_app/view/homepage.dart';
import 'package:route_app/view/homepage2.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/dashboadsharedpref',
    routes: {
      '/dashboard': (context) => homePage(),
      '/dashboard2': (context) => homePage2(),
      '/dashboadsharedpref': (context) => dashboardsharedpreferences(),
    },
  ));
}

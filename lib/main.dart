import 'package:flutter/material.dart';
import './homepage.dart';
import './loginpage.dart';
import './sportcars.dart';
import './Suvcars.dart';
import './ElectricCars.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: loginPage.nameroute,
      home: MyHomePage(),
      routes: {
        MyHomePage.nameroute: (context) => MyHomePage(),
        loginPage.nameroute: (context) => loginPage(),
        sportcars.nameroute: (context) => sportcars(),
        electric.nameroute: (context) => electric(),
        suvcars.nameroute: (context) => suvcars()
      },
    );
  }
}

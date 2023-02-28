import 'package:flutter/material.dart';
import 'package:rentcar/newhomepage.dart';
import './newhomepage.dart';
import './loginpage.dart';
import './sportcars.dart';
import './Suvcars.dart';
import './ElectricCars.dart';
import 'navigasi.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: loginPage.nameroute,
      home: navigasi(),
      routes: {
        navigasi.nameroute: (context) => navigasi(),
        loginPage.nameroute: (context) => loginPage(),
        sportcars.nameroute: (context) => sportcars(),
        electric.nameroute: (context) => electric(),
        suvcars.nameroute: (context) => suvcars()
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rentcar/pages/newhomepage.dart';
import 'pages/newhomepage.dart';
import 'pages/loginpage.dart';
import 'pages/sportcars.dart';
import 'pages/Suvcars.dart';
import 'pages/ElectricCars.dart';
import 'pages/navigasi.dart';
import 'pages/profile.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: loginPage.nameroute,
      home: profile(),
      routes: {
        navigasi.nameroute: (context) => navigasi(),
        loginPage.nameroute: (context) => loginPage(),
        sportcars.nameroute: (context) => sportcars(),
        electric.nameroute: (context) => electric(),
        suvcars.nameroute: (context) => suvcars(),
        profile.nameroute: (context) => profile()
      },
    );
  }
}

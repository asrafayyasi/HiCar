import 'package:flutter/material.dart';
import 'package:rentcar/pages/driverdetails.dart';
import 'package:rentcar/pages/drivingLicense.dart';
import 'package:rentcar/pages/history.dart';
import 'pages/loginpage.dart';
import 'pages/sportcars.dart';
import 'pages/Suvcars.dart';
import 'pages/ElectricCars.dart';
import 'pages/navigasi.dart';
import 'pages/profile.dart';
import 'pages/detailcars.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          bottomAppBarTheme: BottomAppBarTheme(),
          fontFamily: 'Poppins',
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(color: Colors.white),
              backgroundColor: Color.fromARGB(255, 4, 28, 50),
              iconTheme: IconThemeData(color: Colors.white))),
      initialRoute: loginPage.nameroute,
      home: profile(),
      routes: {
        navigasi.nameroute: (context) => navigasi(),
        loginPage.nameroute: (context) => loginPage(),
        sportcars.nameroute: (context) => sportcars(),
        electric.nameroute: (context) => electric(),
        suvcars.nameroute: (context) => suvcars(),
        profile.nameroute: (context) => profile(),
        detailcars.nameroute: (context) => detailcars(),
        history.nameroute: (context) => history(),
        driverdetails.nameroute: (context) => driverdetails(),
        driverlicense.nameroute: (context) => driverlicense(),
      },
    );
  }
}

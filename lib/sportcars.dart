import 'package:flutter/material.dart';

class sportcars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 90,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "HiCar",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              Icon(
                Icons.person,
                color: Colors.black,
                size: 40.0,
              ),
              Padding(padding: EdgeInsets.only(right: 10))
            ],
            bottom: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Container(
                child: SizedBox(
                  height: 50,
                  width: 350,
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(fontFamily: 'Poppins'),
                        fillColor: Colors.white.withOpacity(0.8),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),

                    // autofocus: true,
                  ),
                ),
              ),
            )
            // body: CustomScrollView(
            //   slivers: [
            //     SliverAppBar(
            //       toolbarHeight: 90,
            //       backgroundColor: Colors.white,
            //       centerTitle: true,
            //       title: Text(
            //         "HiCar",
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 35,
            //             fontFamily: 'Poppins',
            //             fontWeight: FontWeight.bold),
            //       ),
            //       actions: [
            //         Icon(
            //           Icons.person,
            //           color: Colors.black,
            //           size: 40.0,
            //         ),
            //         Padding(padding: EdgeInsets.only(right: 10))
            //       ],
            //       bottom: AppBar(
            //         centerTitle: true,
            //         title: Text('data'),
            //         backgroundColor: Colors.white,
            //       ),
            //     )
            //   ],
            // ),
            ));
  }
}

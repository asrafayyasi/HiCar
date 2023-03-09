import 'package:flutter/material.dart';
import 'drivingLicense.dart';

class driverdetails extends StatelessWidget {
  static const nameroute = '/driverdetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 40,
              ),
            ),
            pinned: true,
            toolbarHeight: 90,
            centerTitle: true,
            title: Text(
              "Information",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 40.0,
                  )),
              Padding(padding: EdgeInsets.only(right: 10))
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 1 * MediaQuery.of(context).size.height,
              color: Color.fromARGB(255, 4, 28, 50),
              child: Container(
                padding: EdgeInsets.only(top: 50, left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Personal Data",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Full Name",
                          hintStyle:
                              TextStyle(fontFamily: 'Poppin', fontSize: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Phone Number",
                          hintStyle:
                              TextStyle(fontFamily: 'Poppin', fontSize: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Address",
                          hintStyle:
                              TextStyle(fontFamily: 'Poppin', fontSize: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          contentPadding: EdgeInsets.all(20),
                          hintText: "National Identify Number",
                          hintStyle:
                              TextStyle(fontFamily: 'Poppin', fontSize: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      margin: EdgeInsets.only(top: 100),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 236, 179, 101))),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(driverlicense.nameroute);
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }
}

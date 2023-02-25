import 'package:flutter/material.dart';
import 'package:rentcar/explore.dart';
import 'package:rentcar/sportcars.dart';
import 'package:rentcar/Suvcars.dart';
import 'package:rentcar/ElectricCars.dart';

class MyHomePage extends StatelessWidget {
  // final List<Widget> _pages = [
  //   MyHomePage(),
  //   explore(),
  // ];
  static const nameroute = '/MyHomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
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
        ),
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(right: 10.0, left: 10.0, top: 15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(sportcars.nameroute);
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromARGB(255, 255, 204, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Sport Cars",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            ClipRRect(
                                child: Image.asset(
                              'images/car1.png',
                              width: 175,
                              height: 80,
                            )),
                            Text(
                              "START YOUR WEEK \n IN STYLE",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Starting from \$35/day",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "We found 20 offers",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 10.0, left: 10.0, top: 15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(suvcars.nameroute);
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromARGB(255, 51, 48, 229),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "SUVs Cars",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            ClipRRect(
                                child: Image.asset(
                              'images/car1.png',
                              width: 175,
                              height: 80,
                            )),
                            Text(
                              "START YOUR WEEK \n IN STYLE",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Starting from \$35/day",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "We found 20 offers",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 10.0, left: 10.0, top: 15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(electric.nameroute);
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromARGB(255, 4, 217, 255),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Electric Cars",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            ClipRRect(
                                child: Image.asset(
                              'images/car1.png',
                              width: 175,
                              height: 80,
                            )),
                            Text(
                              "START YOUR WEEK \n IN STYLE",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Starting from \$35/day",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "We found 20 offers",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brands",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("See All >",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
              height: 175,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.circular(20)),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          padding: EdgeInsetsDirectional.all(5.0),
                          height: 150,
                          child: Column(
                            children: [
                              Image.asset(
                                'images/maserati.png',
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                "Maserati",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Mulish'),
                              ),
                              Text("+5",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      color: Color.fromARGB(255, 0, 123, 255)))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          padding: EdgeInsetsDirectional.all(5.0),
                          height: 150,
                          child: Column(
                            children: [
                              Image.asset(
                                'images/bmw.png',
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                "Maserati ",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Mulish'),
                              ),
                              Text("+5",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      color: Color.fromARGB(255, 0, 123, 255)))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          padding: EdgeInsetsDirectional.all(5.0),
                          height: 150,
                          child: Column(
                            children: [
                              Image.asset(
                                'images/marcedes.png',
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                "Maserati ",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Mulish'),
                              ),
                              Text("+5",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      color: Color.fromARGB(255, 0, 123, 255)))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          padding: EdgeInsetsDirectional.all(5.0),
                          height: 150,
                          child: Column(
                            children: [
                              Image.asset(
                                'images/porsce.png',
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                "Maserati ",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Mulish'),
                              ),
                              Text("+5",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      color: Color.fromARGB(255, 0, 123, 255)))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          padding: EdgeInsetsDirectional.all(5.0),
                          height: 150,
                          child: Column(
                            children: [
                              Image.asset(
                                'images/tog.png',
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                "Maserati ",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Mulish'),
                              ),
                              Text("+5",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      color: Color.fromARGB(255, 0, 123, 255)))
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          currentIndex: 1,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'School',
            ),
          ],
        ));
  }
}

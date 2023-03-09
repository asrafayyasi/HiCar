import 'package:flutter/material.dart';
import 'package:rentcar/pages/sportcars.dart';
import 'package:rentcar/pages/Suvcars.dart';
import 'package:rentcar/pages/ElectricCars.dart';

class Homepage extends StatelessWidget {
  static const nameroute = '/HomePage';
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 90,
          leading: Container(),
          centerTitle: true,
          title: Text(
            "HiCar",
            style: TextStyle(
                fontSize: 35,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(5),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 40.0,
                  )),
            ),
          ],
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 10.0, left: 10.0, top: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(sportcars.nameroute);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color.fromARGB(255, 64, 66, 88),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                    padding: const EdgeInsets.only(
                        right: 10.0, left: 10.0, top: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(suvcars.nameroute);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color.fromARGB(255, 44, 116, 179),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                    padding: const EdgeInsets.only(
                        right: 10.0, left: 10.0, top: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(electric.nameroute);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color.fromARGB(255, 20, 66, 114),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Brands",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "See All >",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
                    height: 175,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
                                    color: Color.fromARGB(255, 6, 70, 99),
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
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          color: Colors.white),
                                    ),
                                    Text("+5",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Mulish',
                                            color: Color.fromARGB(
                                                255, 0, 123, 255)))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 6, 70, 99),
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
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          color: Colors.white),
                                    ),
                                    Text("+5",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Mulish',
                                            color: Color.fromARGB(
                                                255, 0, 123, 255)))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 6, 70, 99),
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
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          color: Colors.white),
                                    ),
                                    Text("+5",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Mulish',
                                            color: Color.fromARGB(
                                                255, 0, 123, 255)))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 6, 70, 99),
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
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          color: Colors.white),
                                    ),
                                    Text("+5",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Mulish',
                                            color: Color.fromARGB(
                                                255, 0, 123, 255)))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 6, 70, 99),
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
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          color: Colors.white),
                                    ),
                                    Text("+5",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Mulish',
                                            color: Color.fromARGB(
                                                255, 0, 123, 255)))
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
              )),
        ]))
      ],
    );
  }
}

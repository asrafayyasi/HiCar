import 'package:flutter/material.dart';
import 'package:rentcar/pages/driverdetails.dart';

class detailcars extends StatelessWidget {
  static const nameroute = '/detailcars';
  List<String> icon = [
    'images/speedo.png',
    'images/wifi.png',
    'images/seat.png',
    'images/sensor.png',
    'images/bluetooth.png',
    'images/cardoor.png',
  ];
  List<String> label = [
    'Top Sped',
    'Wifi',
    'Seat',
    'Sensor',
    'Bluetooth',
    'Door',
  ];
  List<String> point = [
    '280km/h',
    'Available',
    '4',
    'Available',
    '4.0',
    '4',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
          toolbarHeight: 90,
          centerTitle: true,
          title: Text(
            "BMW 330i",
            style: TextStyle(
                fontSize: 35,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            color: Color.fromARGB(255, 4, 28, 50),
            child: Column(
              children: [
                Container(
                    color: Colors.white,
                    child: Column(children: [
                      Container(
                        height: 180,
                        width: 1 * MediaQuery.of(context).size.width,
                        color: Color.fromARGB(255, 4, 28, 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/detail.png"))
                          ],
                        ),
                      ),
                    ])),
                Container(
                    padding: EdgeInsets.only(top: 15),
                    height: 400,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(225, 6, 70, 99),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "\$24.99 per day",
                              style: TextStyle(
                                  fontFamily: 'Poppin',
                                  fontSize: 20,
                                  color: Color.fromARGB(150, 255, 255, 255),
                                  decoration: TextDecoration.none),
                            ),
                            Container(
                              width: 80,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "images/Star 1.png",
                                    // width: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontFamily: 'Poppin',
                                        fontSize: 20,
                                        color: Colors.white,
                                        decoration: TextDecoration.none),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 10),
                              child: Text(
                                "Features",
                                style: TextStyle(
                                    fontFamily: 'Poppin',
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.all(5),
                            height: 220,
                            color: Colors.black12,
                            child: GridView.builder(
                              padding: EdgeInsets.all(1),
                              itemCount: 6,
                              itemBuilder: (context, index) => Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset("${icon[index]}"),
                                    Text(
                                      "${label[index]}",
                                      style: TextStyle(
                                          fontFamily: 'Poppin',
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              100, 255, 255, 255),
                                          decoration: TextDecoration.none),
                                    ),
                                    Text(
                                      "${point[index]}",
                                      style: TextStyle(
                                          fontFamily: 'Poppin',
                                          fontSize: 17,
                                          color: Colors.white,
                                          decoration: TextDecoration.none),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 23, 26, 31),
                                ),
                              ),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 1.2,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 5,
                                      crossAxisCount: 3),
                            )),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 50,
                                width: 150,
                                margin: EdgeInsets.only(top: 15, right: 20),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color.fromARGB(255, 236, 179, 101))),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(driverdetails.nameroute);
                                  },
                                  child: Text(
                                    'Book now',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
            //
          )
        ]))
      ],
    );
  }
}

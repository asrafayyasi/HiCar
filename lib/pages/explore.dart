import 'package:flutter/material.dart';

class explore extends StatelessWidget {
  static const nameroute = '/explore';
  final List<Map<String, dynamic>> myList = [
    {
      "nama": "BMW Grand Coupe",
      "jenis": "Automatic",
      "jumlahpintu": "5 doors",
      "kecepatan": "420km",
      "ac": "A/C",
    },
    {
      "nama": "BMW Grand Coupe",
      "jenis": "Automatic",
      "jumlahpintu": "5 doors",
      "kecepatan": "420km",
      "ac": "A/C",
    },
    {
      "nama": "BMW Grand Coupe",
      "jenis": "Automatic",
      "jumlahpintu": "5 doors",
      "kecepatan": "420km",
      "ac": "A/C",
    },
    {
      "nama": "BMW Grand Coupe",
      "jenis": "Automatic",
      "jumlahpintu": "5 doors",
      "kecepatan": "420km",
      "ac": "A/C",
    },
    {
      "nama": "BMW Grand Coupe",
      "jenis": "Automatic",
      "jumlahpintu": "5 doors",
      "kecepatan": "420km",
      "ac": "A/C",
    },
    {
      "nama": "BMW Grand Coupe",
      "jenis": "Automatic",
      "jumlahpintu": "5 doors",
      "kecepatan": "420km",
      "ac": "A/C",
    },
    {
      "nama": "BMW Grand Coupe",
      "jenis": "Automatic",
      "jumlahpintu": "5 doors",
      "kecepatan": "420km",
      "ac": "A/C",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Container(),
            pinned: true,
            toolbarHeight: 90,
            centerTitle: true,
            title: Text(
              "Explore",
              style: TextStyle(
                  fontSize: 35,
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
              delegate: SliverChildListDelegate(myList.map((data) {
            return Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 14),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromARGB(255, 6, 70, 99),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "${data['nama']}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                ClipRRect(
                                    child: Image.asset(
                                  'images/car1.png',
                                  width: 175,
                                  height: 80,
                                ))
                              ],
                            ),
                            Container(
                              height: 130,
                              width: 110,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 20,
                                          child: Image.asset(
                                              "images/transmission.png")),
                                      Text(
                                        " ${data['jenis']}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 20,
                                          child: Image.asset(
                                              "images/car-door.png")),
                                      Text(
                                        " ${data['jumlahpintu']}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 20,
                                          child: Image.asset(
                                              "images/speedometer.png")),
                                      Text(
                                        " ${data['kecepatan']}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 20,
                                          child: Image.asset(
                                            "images/air-conditioner.png",
                                          )),
                                      Text(
                                        " ${data['ac']}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            );
          }).toList()))
        ],
      ),
    );
  }
}

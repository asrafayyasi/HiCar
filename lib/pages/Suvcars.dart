import 'package:flutter/material.dart';
import 'package:rentcar/pages/detailcars.dart';

class suvcars extends StatelessWidget {
  static const nameroute = '/Suvcars';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            toolbarHeight: 90,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 40,
              ),
          
            ),
            centerTitle: true,
            title: Text(
              "SUVs Car",
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
            return Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(detailcars.nameroute);
                },
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
                                      fontWeight: FontWeight.bold),
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
                                        style: TextStyle(fontFamily: 'Poppins'),
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
                                        style: TextStyle(fontFamily: 'Poppins'),
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
                                        style: TextStyle(fontFamily: 'Poppins'),
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
                                        style: TextStyle(fontFamily: 'Poppins'),
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

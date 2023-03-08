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
            pinned: true,
            backgroundColor: Colors.white,
            toolbarHeight: 90,
        
            centerTitle: true,
            title: Text(
              "Explore",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 40.0,
                  )),
              Padding(padding: EdgeInsets.only(right: 10))
            ],
            bottom: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Container(
                margin: EdgeInsets.only(top: 10),
                height: 60,
                child: SizedBox(
                  width: 355,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10),
                        hintText: "Search Vehicle",
                        hintStyle: TextStyle(),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(myList.map((data) {
            return Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 15.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color.fromARGB(255, 245, 245, 245),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                        child:
                                            Image.asset("images/car-door.png")),
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
            );
          }).toList()))
        ],
      ),
    );
  }
}

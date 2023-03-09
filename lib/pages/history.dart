import 'package:flutter/material.dart';

class history extends StatelessWidget {
  static const nameroute = '/history';

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
              "Recent History",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                iconSize: 40,
                onPressed: () {},
                icon: Icon(Icons.search),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListView.builder(
              controller: ScrollController(keepScrollOffset: true),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26, width: 1),
                  color: Colors.white,
                ),
                child: ListTile(
                  style: ListTileStyle.list,
                  leading: Container(
                      padding: EdgeInsets.all(5),
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black26, width: 1),
                        color: Colors.white,
                      ),
                      child: Image(image: AssetImage("images/benz.png"))),
                  title: Text(
                    "Marcedez AMG",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Dec 14, 2021",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$32",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("1 Day",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38))
                    ],
                  ),
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }
}

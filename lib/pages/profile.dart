import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class profile extends StatelessWidget {
  static const nameroute = '/profil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 200,
            centerTitle: true,
            title: Container(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      child: Image(image: AssetImage("images/eth.png")),
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Erik Ten Hag",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "tujuhkosong@gmail.com",
                    style: TextStyle(color: Color.fromARGB(255, 125, 127, 136)),
                  )
                ],
              ),
            ),
            // bottom: AppBar(
            //   elevation: 0,
            //   leading: null,
            //   backgroundColor: Colors.white,
            //   centerTitle: true,
            //   title: ,
            // ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              leading: Image(image: AssetImage("images/person.png")),
              title: Text(
                "Personal Detail",
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Image(image: AssetImage("images/setting.png")),
              title: Text(
                "Settings",
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Image(image: AssetImage('images/history.png')),
              title: Text(
                "Recent History",
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Image(image: AssetImage("images/faq.png")),
              title: Text(
                "FAQ",
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Image(image: AssetImage('images/about.png')),
              title: Text(
                "About Us",
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            )
          ]))
        ],
      ),
    );
  }
}

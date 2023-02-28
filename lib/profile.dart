import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  static const nameroute = '/profil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            toolbarHeight: 90,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 40,
              ),
              color: Colors.black,
            ),
            centerTitle: true,
            title: Text(
              "PROFILE",
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
          ),
        ],
      ),
    );
  }
}

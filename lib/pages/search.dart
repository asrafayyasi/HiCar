import 'package:flutter/material.dart';

class search extends StatelessWidget {
  static const nameroute = '/search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            toolbarHeight: 90,
            // leading: IconButton(
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            //   icon: Icon(
            //     Icons.arrow_back_ios_new,
            //     size: 40,
            //   ),
            //   color: Colors.black,
            // ),
            centerTitle: true,
            title: Text(
              "Search",
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
        ],
      ),
    );
  }
}

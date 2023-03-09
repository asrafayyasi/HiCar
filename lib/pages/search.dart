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
            toolbarHeight: 90,
            automaticallyImplyLeading: false,
            // centerTitle: true,
            title: Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    contentPadding: EdgeInsets.only(top: 10),
                    hintText: "Search Vehicle",
                    hintStyle: TextStyle(),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              color: Color.fromARGB(255, 4, 28, 50),
            )
          ]))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rentcar/pages/explore.dart';
import 'package:rentcar/pages/sportcars.dart';
import 'package:rentcar/pages/Suvcars.dart';
import 'package:rentcar/pages/ElectricCars.dart';
import 'package:rentcar/pages/newhomepage.dart';
import 'package:rentcar/pages/search.dart';
import 'package:rentcar/pages/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class navigasi extends StatefulWidget {
  static const nameroute = '/navigasi';

  @override
  State<navigasi> createState() => _navigasiState();
}

class _navigasiState extends State<navigasi> {
  final List<Widget> _pages = [Homepage(), explore(), search(), profile()];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.black,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.explore),
              title: Text("Explore"),
              selectedColor: Colors.black,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.black,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.black,
            ),
          ],
        ));
  }
}

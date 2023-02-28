import 'package:flutter/material.dart';
import 'package:rentcar/explore.dart';
import 'package:rentcar/sportcars.dart';
import 'package:rentcar/Suvcars.dart';
import 'package:rentcar/ElectricCars.dart';
import 'package:rentcar/newhomepage.dart';
import 'package:rentcar/search.dart';
import 'package:rentcar/profile.dart';
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
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.explore),
              title: Text("Explore"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ));
  }
}

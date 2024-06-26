// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
     Container(
        color: Colors.brown,
      ),
       Container(
        color: Colors.cyan,
      ),
       Container(
        color: Colors.limeAccent,
      ),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (int _index) {
          setState(() {
            _currentIndex = _index;
          });
        },
        items: [
          SalomonBottomBarItem(
            selectedColor: Colors.brown,
            unselectedColor: Colors.grey,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.cyan,
            unselectedColor: Colors.grey,
            icon: Icon(Icons.add),
            title: Text('Add'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.limeAccent,
            unselectedColor: Colors.grey,
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}

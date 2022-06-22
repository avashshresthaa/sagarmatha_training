import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/first_page.dart';
import 'package:travel_app/pages/second_page.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });

    print('currentIndex= $currentIndex');
  }

  List pages = [
    FirstPage(),
    SecondPage(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeIn,
        index: currentIndex,
        onTap: onTap,
        backgroundColor: Colors.transparent,
        height: 60,
        items: [
          Icon(Icons.home),
          Icon(Icons.search),
          Icon(Icons.chat),
        ],
      ),
    );
  }
}

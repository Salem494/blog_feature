// ignore_for_file: file_names

import 'package:blog_app/constant/const.dart';
import 'package:blog_app/screen/aboutUs.dart';
import 'package:blog_app/screen/contact.dart';
import 'package:blog_app/screen/home.dart';
import 'package:flutter/material.dart';

import 'myPrograms.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }


  final Screen = [
    Home(),
    AboutUs(),
    MyPrograms(),
    ContantScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'لماذا نحن؟',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plagiarism_rounded),
            label: 'برامجنا العلاجية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            label: 'تواصل معنا',
          ),
        ],
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: myColor.KSecondColor,
        elevation: 5.0,
        unselectedFontSize: 20,
        selectedFontSize: 20,
        backgroundColor: myColor.KLightColor,
        iconSize: 25,
        onTap: _onItemTapped,
        currentIndex: currentIndex,
        selectedItemColor: myColor.KSecondColor,
      ),
    );
  }
}

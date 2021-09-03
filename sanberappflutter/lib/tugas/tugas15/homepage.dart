import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas15/pages/accountscreen.dart';
import 'package:sanberappflutter/tugas/tugas15/pages/homescreen.dart';
import 'package:sanberappflutter/tugas/tugas15/pages/searchscreen.dart';

class HomePage15 extends StatefulWidget {
  static const routeName = '/home_page15';
  @override
  _HomePage15State createState() => _HomePage15State();
}

class _HomePage15State extends State<HomePage15> {
  int _bottomNavIndex = 0;
  static const String _headlineText = 'Home';

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  List<Widget> _listWidget = [HomeScreen15(), SearchScreen(), AccountScreen()];

  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: _headlineText,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: SearchScreen.searchTitle,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: AccountScreen.accountTitle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        items: _bottomNavBarItems,
        onTap: _onBottomNavTapped,
      ),
    );
  }
}

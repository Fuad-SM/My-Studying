import 'package:flutter/material.dart';
import 'package:sanberappflutter/home_page.dart';
import 'package:sanberappflutter/tugas/tugas12/pages/telegram.dart';
import 'package:sanberappflutter/tugas/tugas13/pages/homescreen.dart';
import 'package:sanberappflutter/tugas/tugas13/pages/loginscreen.dart';
import 'package:sanberappflutter/tugas/tugas14/get_data.dart';
import 'package:sanberappflutter/tugas/tugas15/homepage.dart';
import 'package:sanberappflutter/tugas/tugas15/pages/loginscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SanberAPP Flutter',
      debugShowCheckedModeBanner: false,
      // home: HomePage15(),
      initialRoute: FirstScreen.routeName,
      routes: {
        FirstScreen.routeName: (context) => FirstScreen(),
        Telegram.routeName: (context) => Telegram(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        GetDataScreen.routeName: (context) => GetDataScreen(),
        LoginScreen15.routeName: (context) => LoginScreen15(),
        HomePage15.routeName: (context) => HomePage15(),
      },
    );
  }
}

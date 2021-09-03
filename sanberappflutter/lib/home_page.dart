import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas12/pages/telegram.dart';
import 'package:sanberappflutter/tugas/tugas13/pages/loginscreen.dart';
import 'package:sanberappflutter/tugas/tugas14/get_data.dart';
import 'package:sanberappflutter/tugas/tugas15/pages/loginscreen.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/FirstScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('SanberApp Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/sanberlogo.png',
              width: 140,
            ),
            SizedBox(
              height: 50,
            ),
            Wrap(
              runSpacing: 20,
              children: [
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Telegram.routeName);
                      },
                      child: Text('Tugas 12')),
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      child: Text('Tugas 13')),
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, GetDataScreen.routeName);
                      },
                      child: Text('Tugas 14')),
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen15.routeName);
                      },
                      child: Text('Tugas 15')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

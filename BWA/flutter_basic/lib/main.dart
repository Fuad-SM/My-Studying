import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            title: Text('Flutter Basic'),
            centerTitle: true,
          ),
          body: Image.asset('assets/images/primary.png')),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas13/common/theme13.dart';

class CustomTextFieldLogin extends StatefulWidget {
  @override
  _CustomTextFieldLoginState createState() => _CustomTextFieldLoginState();
}

class _CustomTextFieldLoginState extends State<CustomTextFieldLogin> {
  final _textuserController = TextEditingController();
  final _textpassController = TextEditingController();

  @override
  void dispose() {
    _textuserController.dispose();
    _textpassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _textuserController,
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: blueColor),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(
          height: 19,
        ),
        TextField(
          obscureText: true,
          controller: _textpassController,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: blueColor),
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}

class TextFieldSearchHome extends StatefulWidget {
  @override
  _TextFieldSearchHomeState createState() => _TextFieldSearchHomeState();
}

class _TextFieldSearchHomeState extends State<TextFieldSearchHome> {
  final _textController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   _textController = TextEditingController();
  // }
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: TextField(
        style: subtitle,
        controller: _textController,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blueColor),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

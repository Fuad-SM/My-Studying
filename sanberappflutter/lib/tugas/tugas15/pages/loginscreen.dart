import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas13/common/theme13.dart';
import 'package:sanberappflutter/tugas/tugas13/widgets/textfield_show.dart';
import 'package:sanberappflutter/tugas/tugas15/homepage.dart';

class LoginScreen15 extends StatelessWidget {
  static const routeName = '/login_screen_15';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 41),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 49,
                  ),
                  Text(
                    'Sanber Flutter',
                    style: titleLogin,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset(
                    'assets/images/flutter.png',
                    width: 110,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFieldLogin(),
                  SizedBox(
                    height: 18,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password',
                        style: subtitle,
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage15.routeName);
                      },
                      child: Text(
                        'Login',
                        style: subtitle,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: blueColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Does not have account?',
                        style: subtitle,
                      ),
                      TextButton(onPressed: () {}, child: Text('Sign in'))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

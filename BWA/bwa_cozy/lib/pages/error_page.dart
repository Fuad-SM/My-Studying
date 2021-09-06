import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/error.png',
              width: MediaQuery.of(context).size.width - 60,
              height: 90,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Where are you going?',
              style: blackTextStyle.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Seems like the page that you were\nrequested is already gone',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 210,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: purpleColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17))),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (route) => false);
                },
                child: Text(
                  'Back to Home',
                  style: whiteTextstyle.copyWith(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// bwa-cozy.herokuapp.com/recommended-spaces
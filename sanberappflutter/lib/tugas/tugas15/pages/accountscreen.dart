import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas13/common/theme13.dart';

class AccountScreen extends StatelessWidget {
  static const String accountTitle = 'Account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Comming Soon!',
              style: subtitle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w600, color: blackColor),
            ),
            Text(
              'Feature $accountTitle will be coming soon!',
              style: subtitle.copyWith(
                  fontWeight: FontWeight.w500, color: blackColor),
            ),
          ],
        ),
      )),
    );
  }
}

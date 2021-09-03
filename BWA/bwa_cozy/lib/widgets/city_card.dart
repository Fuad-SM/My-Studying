import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  const CityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Image.asset(
              'assets/images/city1.png',
              width: 120,
              height: 102,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              'Jakarta',
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

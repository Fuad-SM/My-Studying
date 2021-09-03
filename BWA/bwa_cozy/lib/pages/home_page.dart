import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 24,
        ),
        child: ListView(
          children: [
            Text(
              'Explore Now',
              style: blackTextStyle.copyWith(fontSize: 24),
            ),
            SizedBox(height: 2),
            Text(
              'Mencari kosan yang cozy',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Popular Cities',
              style: regularTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CityCard(),
                  CityCard(),
                  CityCard(),
                  CityCard(),
                  CityCard(),
                  CityCard(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

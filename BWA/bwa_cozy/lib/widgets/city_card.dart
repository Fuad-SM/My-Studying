import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  const CityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final City cities = cityList[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              height: 150,
              width: 120,
              color: Color(0xffF6F7F8),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        cities.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      cities.isPopular
                          ? Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: purpleColor,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(36))),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/Icon_star.png',
                                    width: 22,
                                    height: 22,
                                  ),
                                ),
                              ),
                            )
                          : Container()
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    cities.name,
                    style: blackTextStyle.copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 20,
        ),
        itemCount: cityList.length,
      ),
    );
  }
}

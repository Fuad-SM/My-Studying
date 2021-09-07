import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/providers/space_provider.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_item.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE: Part Title/Header
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

                  // NOTE: Part Popular Cities
                  Text(
                    'Popular Cities',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CityCard(),
                  SizedBox(
                    height: 30,
                  ),

                  // NOTE: Part Recomended Space
                  Text(
                    'Recomended Space',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  FutureBuilder(
                      future: spaceProvider.getRecomendedSpaces(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<Space> data = snapshot.data as List<Space>;
                          int index = 0;
                          return Column(
                              children: data.map((item) {
                            index++;
                            return Container(
                              margin: EdgeInsets.only(top: index == 1 ? 0 : 30),
                              child: SpaceCard(item),
                            );
                          }).toList());
                        }
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }),
                  SizedBox(
                    height: 30,
                  ),

                  // NOTE: Part Tips & Guidance
                  Text(
                    'Tips & Guidance',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TipsCard(
                      tips: Tips(
                    id: 1,
                    imageUrl: 'assets/images/tips1.png',
                    title: 'City Guidelines',
                    time: 'Updated 20 Apr',
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                      tips: Tips(
                    id: 2,
                    imageUrl: 'assets/images/tips2.png',
                    title: 'Jakarta Fairship',
                    time: 'Updated 11 Dec',
                  )),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      // NOTE: Bottom Button Navbar
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2.0 * 24.0),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

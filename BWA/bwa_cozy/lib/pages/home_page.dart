import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_item.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE: Title/Header
                  _header(),
                  // NOTE: Popular Cities
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
                  // NOTE: Recomended Space
                  _recomendedSpace(),
                  _tipsGuidance(),
                ],
              ),
            ),
          ],
        ),
      ),
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

  Widget _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
      ],
    );
  }

  Widget _recomendedSpace() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recomended Space',
          style: regularTextStyle.copyWith(fontSize: 16),
        ),
        SizedBox(height: 16),
        SpaceCard(
            space: Space(
                id: 1,
                name: 'Kuretakeso Hott',
                price: r'$52',
                address: 'Bandung, Germany',
                imageUrl: 'assets/images/space1.png',
                review: '4/5')),
        SizedBox(
          height: 30,
        ),
        SpaceCard(
            space: Space(
                id: 2,
                name: 'Roemah Nenek',
                price: r'$11',
                address: 'Seattle, Bogor',
                imageUrl: 'assets/images/space2.png',
                review: '5/5')),
        SizedBox(
          height: 30,
        ),
        SpaceCard(
            space: Space(
                id: 3,
                name: 'Darrling How',
                price: r'$20',
                address: 'Jakarta, Indonesia',
                imageUrl: 'assets/images/space3.png',
                review: '3/5')),
        SizedBox(
          height: 30,
        ),
        SpaceCard(
            space: Space(
                id: 4,
                name: 'Orang Crown',
                price: r'$552',
                address: 'Halla, Sumatera',
                imageUrl: 'assets/images/space4.png',
                review: '5/5')),
        SizedBox(
          height: 30,
        ),
        SpaceCard(
            space: Space(
                id: 5,
                name: 'City of Cactus',
                price: r'$20',
                address: 'Jakarta, Indonesia',
                imageUrl: 'assets/images/space5.png',
                review: '3/5')),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget _tipsGuidance() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
    );
  }
}

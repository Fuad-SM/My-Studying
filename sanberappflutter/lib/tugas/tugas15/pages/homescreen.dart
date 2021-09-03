import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas13/common/theme13.dart';
import 'package:sanberappflutter/tugas/tugas13/widgets/textfield_show.dart';
import 'package:sanberappflutter/tugas/tugas15/widgets/drawer_screen.dart';

class HomeScreen15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Welcome,',
                  style: titleHome,
                ),
                Text('Hilmy', style: titleHome2),
                SizedBox(
                  height: 68,
                ),
                TextFieldSearchHome(),
                SizedBox(
                  height: 72,
                ),
                Text(
                  'Recomended Place',
                  style: subtitle,
                ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  spacing: 21,
                  runSpacing: 13,
                  children: [
                    picturePlace('assets/images/Monas.png'),
                    picturePlace('assets/images/Roma.png'),
                    picturePlace('assets/images/Berlin.png'),
                    picturePlace('assets/images/Tokyo.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget picturePlace(String image) {
    return Image.asset(
      image,
      width: 140,
      height: 90,
    );
  }
}

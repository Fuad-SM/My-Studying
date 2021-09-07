import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/facility_item.dart';
import 'package:bwa_cozy/widgets/favorite_button.dart';
import 'package:bwa_cozy/widgets/photo_card.dart';
import 'package:bwa_cozy/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.space, {Key? key}) : super(key: key);
  final Space space;

  @override
  Widget build(BuildContext context) {
    launchURl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        // throw ('Could not launch $url');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Image.network(
            space.imageUrl,
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(height: 328),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                space.name,
                                style: blackTextStyle.copyWith(fontSize: 22),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text.rich(TextSpan(
                                  text: '\$${space.price}',
                                  style: purpleTextStyle.copyWith(fontSize: 16),
                                  children: [
                                    TextSpan(
                                        text: ' / month',
                                        style: greyTextStyle.copyWith(
                                            fontSize: 16))
                                  ]))
                            ],
                          ),
                          Row(
                              children: [1, 2, 3, 4, 5].map((index) {
                            return RatingItem(
                                index: index, rating: space.rating);
                          }).toList())
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Main Facilities',
                          style: blackTextStyle.copyWith(fontSize: 16)),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                                imageUrl: 'assets/images/icon_kitchen.png',
                                count: space.numberOfKitchens,
                                facility: 'Kitchen'),
                            FacilityItem(
                                imageUrl: 'assets/images/icon_bedroom.png',
                                count: space.numberOfBedrooms,
                                facility: 'Bedroom'),
                            FacilityItem(
                                imageUrl: 'assets/images/icon_cupboard.png',
                                count: space.numberOfCupboards,
                                facility: 'Big Lemari'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Photos',
                          style: blackTextStyle.copyWith(fontSize: 16)),
                      SizedBox(
                        height: 12,
                      ),
                      PhotoCard(space),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Location',
                          style: blackTextStyle.copyWith(fontSize: 16)),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${space.address}\n${space.country}',
                                style: greyTextStyle),
                            CircleAvatar(
                              backgroundColor: Color(0xffF6F7F8),
                              maxRadius: 20,
                              child: IconButton(
                                onPressed: () {
                                  launchURl(space.mapUrl);
                                },
                                icon: Icon(Icons.place),
                                color: Color(0xff989BA1),
                                iconSize: 22,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: purpleColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              )),
                          onPressed: () {
                            launchURl('tel:${space.phone}');
                          },
                          child: Text(
                            'Book Now',
                            style: whiteTextstyle.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundColor: whiteColor,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.navigate_before),
                        color: Color(0xff3A3379),
                      )),
                  CircleAvatar(
                    backgroundColor: whiteColor,
                    child: FavoriteButton(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

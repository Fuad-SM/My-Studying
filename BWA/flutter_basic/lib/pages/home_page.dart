import 'package:flutter/material.dart';
import 'package:flutter_basic/themes/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Profile Picture',
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/primary.png',
                width: 140,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Anne Margaritha',
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'UX Designer',
                style: TextStyle(color: greyColor, fontSize: 16),
              ),
              SizedBox(
                height: 70,
              ),
              Wrap(
                spacing: 38,
                runSpacing: 40,
                children: [
                  Image.asset(
                    'assets/images/item1.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item2.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item3.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item4.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item5.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item6.png',
                    width: 80,
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: 224,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16))),
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 290,
                            padding: const EdgeInsets.symmetric(
                                vertical: 50, horizontal: 62),
                            child: Column(
                              children: [
                                Text(
                                  'Update Photo',
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'You are only able to change\n the picture profile once',
                                  style:
                                      TextStyle(fontSize: 18, color: greyColor),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                    width: 224,
                                    height: 55,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: orangeColor,
                                        shadowColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                      ),
                                      onPressed: () {},
                                      child: Text('Continue'),
                                    ))
                              ],
                            ),
                          );
                        });
                  },
                  child: Text(
                    'Update Profile',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

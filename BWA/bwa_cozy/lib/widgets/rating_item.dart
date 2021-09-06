import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem({required this.index, required this.rating});
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/Icon_star.png',
        width: 20, color: index <= rating ? orangeColor : Color(0xff989BA1));
  }
}

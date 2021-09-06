import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String imageUrl;
  final int count;
  final String facility;

  const FacilityItem(
      {required this.imageUrl, required this.count, required this.facility});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(TextSpan(
            text: count.toString(),
            style: purpleTextStyle,
            children: [TextSpan(text: ' $facility', style: greyTextStyle)]))
      ],
    );
  }
}

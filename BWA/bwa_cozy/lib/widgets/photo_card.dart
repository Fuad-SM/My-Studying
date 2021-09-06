import 'package:bwa_cozy/models/space.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard(this.space);
  final Space space;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: space.photos.map((item) {
            return Container(
              margin: EdgeInsets.only(right: 18),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  item,
                  width: 110,
                  height: 88,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList()),
    );
  }
}

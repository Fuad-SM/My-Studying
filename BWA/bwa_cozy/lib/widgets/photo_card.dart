import 'package:bwa_cozy/models/photo.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final Photo photo = photoList[index];
          return Image.asset(
            photo.imageUrl,
            width: 110,
            height: 88,
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 18,
        ),
        itemCount: photoList.length,
      ),
    );
  }
}

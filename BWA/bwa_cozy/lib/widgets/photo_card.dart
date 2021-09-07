import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/providers/space_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard(this.space);
  final Space space;

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    return Container(
      height: 88,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return FutureBuilder(
              future: spaceProvider.getRecomendedSpaces(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      space.photos[index],
                      width: 110,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                  );
                }
                return Container(
                  width: 110,
                  height: 80,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: 18),
          itemCount: space.photos.length),
    );
  }
}

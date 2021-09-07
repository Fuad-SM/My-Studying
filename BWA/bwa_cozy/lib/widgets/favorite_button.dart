import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isFavorited = !_isFavorited;
        });
      },
      icon: Icon(Icons.favorite),
      color: _isFavorited ? orangeColor : greyColor,
    );
  }
}

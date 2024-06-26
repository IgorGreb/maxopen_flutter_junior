import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VertivalCard extends StatelessWidget {
  final String movImage;
  final int raiting;
  final String stars;
  final String favorite;

  const VertivalCard(
      {super.key,
      required this.movImage,
      required this.raiting,
      required this.stars,
      required this.favorite});

  @override
  Widget build(BuildContext context) {
    throw SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(movImage),
          Text(raiting as String),
          Image.asset(stars),
          Image.asset(stars),
        ],
      ),
    );
  }
}

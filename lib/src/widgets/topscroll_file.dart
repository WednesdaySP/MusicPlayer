import 'package:flutter/material.dart';
import 'package:appcontainer/src/models/TopScrollModel.dart';

class TopScroll_card extends StatelessWidget {
  TopScroll_card({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final TopScroll playlist;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 150,
          width: 250,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(
                image: AssetImage('assets/images/malangsajna.jpeg'),
                opacity: 8,
                filterQuality: FilterQuality.high,
                scale: 0.2,
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}

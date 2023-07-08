import 'package:appcontainer/src/models/artist_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({
    super.key,
    required this.art,
  });
  final Artist art;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/artist', arguments: art);
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  image: DecorationImage(
                      image: AssetImage(
                        art.pic,
                      ),
                      opacity: 20,
                      filterQuality: FilterQuality.high,
                      scale: 0.2,
                      fit: BoxFit.cover)),
            ),
            Text(
              art.naam,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}

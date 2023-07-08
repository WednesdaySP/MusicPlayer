import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appcontainer/src/models/TopScrollModel.dart';

class TopScroll_card extends StatelessWidget {
  TopScroll_card({
    Key? key,
    required this.playlist,
  }) : super(key: key);
  final TopScroll playlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/playlist', arguments: playlist);
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage(
                        playlist.imageUrl,
                      ),
                      fit: BoxFit.cover,
                      scale: 0.2,
                      filterQuality: FilterQuality.high)),
            ),
            // Container(
            //   height: 50,
            //   width: MediaQuery.of(context).size.width * 0.37,
            //   margin: EdgeInsets.only(bottom: 10),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(15)),
            //     color: Colors.white.withOpacity(0.8),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             playlist.title,
            //             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            //                   color: Colors.deepPurple,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //           ),
            //           // Text(
            //           //   playlist.description,
            //           //   style: Theme.of(context).textTheme.bodySmall!.copyWith(
            //           //         color: Colors.white,
            //           //         fontWeight: FontWeight.bold,
            //           //       ),
            //           // ),
            //         ],
            //       ),
            //       Icon(
            //         Icons.play_circle,
            //         color: Colors.deepPurple,
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

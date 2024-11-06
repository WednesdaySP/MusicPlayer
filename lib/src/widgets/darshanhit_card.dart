import 'package:appcontainer/src/models/darshan_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarshanHits extends StatelessWidget {
  const DarshanHits({
    super.key,
    required this.superhit,
  });
  final Darshan superhit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/superhit',arguments: superhit);
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [Container(
            margin: const EdgeInsets.only(right: 18),
            // height: 150,
            width: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage(
                      superhit.image,
                    ),
                    opacity: 8,
                    filterQuality: FilterQuality.high,
                    scale: 0.2,
                    fit: BoxFit.cover,
                    )),
          ),
          ]
        ),
      ),
    );
  }
}

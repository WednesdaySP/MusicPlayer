import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 6, 6, 6),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              height: 300,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 40, 39, 39),
              ),
              child: Row(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    margin: const EdgeInsets.fromLTRB(100, 10, 10, 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 20, color: Color.fromARGB(255, 49, 44, 44)),
                      borderRadius: BorderRadius.circular(160),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/images.jpeg'),
                        scale: 0.6,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                        opacity: 9,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 10, 10, 10),
                    child: const Text(
                      'User Name',
                      style: TextStyle(
                        fontSize: 100,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

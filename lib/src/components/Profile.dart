import 'package:appcontainer/src/home/HomePage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 6, 6, 6),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * .88,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 23, 22, 22),
              ),
              child: const Column(
                children: [
                  UserHeader(),
                  Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ProfileList(
                    title: 'Favourites',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ProfileList(
                    title: 'Library',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ProfileList(
                    title: 'Artists',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ProfileList(
                    title: 'Most Played',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ProfileList(
                    title: 'Made for you',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileList extends StatelessWidget {
  const ProfileList({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
          },
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}

class UserHeader extends StatelessWidget {
  const UserHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                border: Border.all(
                    width: 3, color: const Color.fromARGB(255, 49, 44, 44)),
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
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: const Text(
                'User Name',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

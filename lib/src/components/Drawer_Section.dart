import 'package:appcontainer/src/components/Profile.dart';
import 'package:appcontainer/src/components/Settings.dart';
import 'package:flutter/material.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(padding: EdgeInsets.zero, children: [
        SizedBox(
          height: 400,
          child: DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/jk.jpeg'),
                ),
                const Text(
                  'Jungkook',
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  'Bio: lorem lipsumlp lorem dolors ta mine bruder'
                  'jefejfefieife ifhiuhriu ueien kjhfuih ffj',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: const Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: Colors.white,
          ),
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.login_sharp,
            color: Colors.white,
          ),
          title: const Text(
            'Log In',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ));
          },
        ),
        // DrawerBottom();
      ]),
    );
  }
}

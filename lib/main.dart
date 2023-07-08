// ignore: unused_import
//import 'package:appcontainer/src/home/search.dart';
import 'package:appcontainer/src/home/PlayListScreen.dart';
import 'package:appcontainer/src/home/RecentPlayScreen.dart';
import 'package:appcontainer/src/home/SongScreen.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:appcontainer/src/home/HomePage.dart';
// ignore: unused_import
import 'package:appcontainer/src/components/Profile.dart';
import 'package:get/get.dart';
//import 'package:screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/song', page: () => const SongScreen()),
        GetPage(name: '/playlist', page: () => const RecentScreen()),
        GetPage(name: '/artist', page: () => const PlaylistScreen()),
      ],
    );
  }
}

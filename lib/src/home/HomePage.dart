import 'package:appcontainer/src/models/TopScrollModel.dart';
import 'package:appcontainer/src/models/artist_model.dart';
import 'package:appcontainer/src/models/darshan_model.dart';
import 'package:appcontainer/src/models/song_model.dart';
import 'package:appcontainer/src/widgets/artist_card.dart';
import 'package:appcontainer/src/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:appcontainer/src/widgets/song_card.dart';
//import 'package:appcontainer/src/widgets/widgets.dart';
import 'package:appcontainer/src/widgets/topscoll_card.dart';

import '../components/Drawer_Section.dart';
import '../widgets/darshanhit_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<TopScroll> playlists = TopScroll.playlists;
    List<Artist> arts = Artist.arts;
    List<Darshan> superhits = Darshan.superhits;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldState,
      drawer: const DrawerSection(),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: Icon(
                          Icons.sort_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () => {
                          _scaffoldState.currentState!.openDrawer(),
                        },
                      ),
                      SizedBox(
                        width: 230,
                      ),
                      TextButton(
                        child: Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () => {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Search box.....
          //Music player scrolling start of page............
          Container(
            height: height * .88,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    //margin: const EdgeInsets.fromLTRB(75, 10, 75, 10),
                    padding: EdgeInsets.only(bottom: 9),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '🎵Music Player🎵',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //PageView 1.............
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          height: 200,
                          width: width,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: songs.length,
                              itemBuilder: (context, index) {
                                return SongCard(song: songs[index]);
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //Album.......
                  SectionHeader(title: '✨Recently Played'),

                  Container(
                    margin: const EdgeInsets.fromLTRB(18, 5, 18, 5),
                    height: 200,
                    width: width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: playlists.length,
                        itemBuilder: (context, index) {
                          return TopScroll_card(playlist: playlists[index]);
                        }),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //Playlist............
                  SectionHeader(title: '💫Blue Family'),

                  Container(
                    margin: EdgeInsets.fromLTRB(18, 5, 18, 5),
                    height: 200,
                    width: width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: superhits.length,
                        itemBuilder: (context, index) {
                          return DarshanHits(superhit: superhits[index]);
                        }),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // Favourite Artist........................
                  SectionHeader(title: '😍Your favourite artists'),

                  Container(
                    margin: const EdgeInsets.fromLTRB(18, 5, 18, 5),
                    height: 200,
                    width: width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: playlists.length,
                        itemBuilder: (context, index) {
                          return ArtistCard(
                            art: arts[index],
                          );
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

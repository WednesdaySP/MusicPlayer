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
            width: width,
            child: Row(
              children: [
                Container(
                  width: 130,
                  height: 50,
                  child: TextButton(
                    child: const Image(
                      image: AssetImage(
                        'assets/images/logo.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    onPressed: () => {
                      _scaffoldState.currentState!.openDrawer(),
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(450, 15, 450, 0),
                  height: 40,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 191, 6, 223),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        weight: 20,
                      ),
                      Text(
                        'Artists, songs or podcasts',
                        //textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
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
                    margin: const EdgeInsets.fromLTRB(75, 10, 75, 10),
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
                  SectionHeader(title: '💫Darshan Rawal Superhits'),

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
                  // Favourite Artist..............................................
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

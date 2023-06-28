import 'package:appcontainer/src/models/TopScrollModel.dart';
import 'package:appcontainer/src/models/song_model.dart';
import 'package:flutter/material.dart';
import 'package:appcontainer/src/widgets/song_card.dart';
//import 'package:appcontainer/src/widgets/widgets.dart';
import 'package:appcontainer/src/widgets/topscroll_file.dart';

import '../components/Drawer_Section.dart';

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
                  //Album.......
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' ✨Darshan Rawal Super Hit songs',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                  ),

                  //pageview scroll........child: ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  // itemBuilder: (context, index) {
                  //  return SongCard(song: songs[index]);
                  // }),

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

                  //Playlist............
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '💫Recently played',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(18, 5, 18, 5),
                    height: 200,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/iskdr.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/ekterfa1.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/song3.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/duniya.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/asalmein1.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/baarishonm.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/song2.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/song1.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/song3.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/ekterfa1.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/asalmein1.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/duniya.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/sriksri.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Favourite Artist..............................................

                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '😍Your favourite artists',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(18, 5, 18, 5),
                    height: 200,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    height: 150,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/jk.jpeg',
                                            ),
                                            opacity: 20,
                                            filterQuality: FilterQuality.high,
                                            scale: 0.2,
                                            fit: BoxFit.cover)),
                                  ),
                                  const Text(
                                    'Jungkook',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/jimin.jpeg',
                                                ),
                                                opacity: 20,
                                                filterQuality:
                                                    FilterQuality.high,
                                                scale: 0.2,
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        'Jimin',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/drs.jpeg',
                                                ),
                                                opacity: 20,
                                                filterQuality:
                                                    FilterQuality.high,
                                                scale: 0.2,
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        'Darshan Rawal',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/jubin.jpeg',
                                                ),
                                                opacity: 20,
                                                filterQuality:
                                                    FilterQuality.high,
                                                scale: 0.2,
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        'Jubin Nautyal',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/shreya.jpeg',
                                                ),
                                                opacity: 20,
                                                filterQuality:
                                                    FilterQuality.high,
                                                scale: 0.2,
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        'Shreya Ghosla',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/selena.jpeg',
                                                ),
                                                opacity: 20,
                                                filterQuality:
                                                    FilterQuality.high,
                                                scale: 0.2,
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        'Selena Gomez',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/lata.jpeg',
                                                ),
                                                opacity: 20,
                                                filterQuality:
                                                    FilterQuality.high,
                                                scale: 0.2,
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        'Lata Mangeshkar',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/kk.jpeg',
                                                ),
                                                opacity: 20,
                                                filterQuality:
                                                    FilterQuality.high,
                                                scale: 0.2,
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        'KK',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/edd.jpeg',
                                                ),
                                                opacity: 20,
                                                filterQuality:
                                                    FilterQuality.high,
                                                scale: 0.2,
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        'Ed Sheren',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/siddhu.jpeg',
                                                ),
                                                opacity: 20,
                                                filterQuality:
                                                    FilterQuality.high,
                                                scale: 0.2,
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        'Siddhu Moosewala',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/sonu.jpeg',
                                              ),
                                              opacity: 20,
                                              filterQuality: FilterQuality.high,
                                              scale: 0.2,
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      const Text(
                                        'Sonu Nigam',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ])),
                          ],
                        ),
                      ),
                    ),
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

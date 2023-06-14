import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 170,
                  height: 70,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/logo.jpg',
                          ),
                          fit: BoxFit.contain)),
                  // child: Image(
                  //     image: AssetImage(
                  //   ,
                  // )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(400, 15, 450, 0),
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bluetooth,
                        color: Colors.white,
                        weight: 20,
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        weight: 20,
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        weight: 20,
                      )
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.list_outlined,
                          color: Colors.white,
                          size: 25,
                          weight: 16,
                        ),
                        Text(
                          '🎵Music Player🎵',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.favorite_outlined,
                          color: Colors.white,
                          size: 25,
                          weight: 15,
                        )
                      ],
                    ),
                  ),
                  //PageView 1.............
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          height: 200,
                          width: width,
                          child: PageView(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/app2.webp',
                                        ),
                                        opacity: 8,
                                        filterQuality: FilterQuality.high,
                                        scale: 0.2,
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/app4.png',
                                        ),
                                        opacity: 8,
                                        filterQuality: FilterQuality.high,
                                        scale: 0.2,
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/app8.png',
                                        ),
                                        opacity: 8,
                                        filterQuality: FilterQuality.high,
                                        scale: 0.2,
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/app6.png',
                                        ),
                                        opacity: 8,
                                        filterQuality: FilterQuality.high,
                                        scale: 0.2,
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/app2.webp',
                                        ),
                                        opacity: 8,
                                        filterQuality: FilterQuality.high,
                                        scale: 0.2,
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/app4.png',
                                        ),
                                        opacity: 8,
                                        filterQuality: FilterQuality.high,
                                        scale: 0.2,
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Album.......
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                    child: Row(
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

                  //pageview scroll........

                  Container(
                    margin: EdgeInsets.fromLTRB(18, 5, 18, 5),
                    height: 200,
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/judiyaa.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/song4.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                              margin: EdgeInsets.only(right: 10),
                              height: 150,
                              width: 250,
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
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Playlist............
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                    child: Row(
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
                    margin: EdgeInsets.fromLTRB(18, 5, 18, 5),
                    height: 200,
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
                              height: 150,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/song4.jpeg',
                                      ),
                                      opacity: 8,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                              margin: EdgeInsets.only(right: 18),
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
                    child: Row(
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
                    margin: EdgeInsets.fromLTRB(18, 5, 18, 5),
                    height: 200,
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/jk.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/jimin.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/drs.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/jubin.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/shreya.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/selena.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/rmm.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/vv.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/lata.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/kk.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/edd.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/siddhu.jpeg',
                                      ),
                                      opacity: 20,
                                      filterQuality: FilterQuality.high,
                                      scale: 0.2,
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/sonu.jpeg',
                                    ),
                                    opacity: 20,
                                    filterQuality: FilterQuality.high,
                                    scale: 0.2,
                                    fit: BoxFit.cover),
                              ),
                              // child: Align(
                              //   alignment: Alignment.bottomCenter,
                              //   child: Text(
                              //     'Jungkook',
                              //     textAlign: TextAlign.end,
                              //     style: TextStyle(
                              //         color: Colors.white,
                              //         fontSize: 20,
                              //         fontWeight: FontWeight.w300),
                              //   ),
                              // )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Audio display
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 50, 50, 15),
                    height: 50,
                    width: width,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 197, 16, 229),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/img2.jpeg'),
                            ),
                            Text(
                              'Audio name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.skip_previous_sharp,
                                size: 30,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.play_arrow_sharp,
                                size: 30,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.skip_next_sharp,
                                size: 30,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.favorite_outlined,
                                size: 30,
                                color: Colors.green,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

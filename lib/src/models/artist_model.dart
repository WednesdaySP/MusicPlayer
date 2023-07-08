class Artist {
  final String pic;
  final String naam;
  Artist({
    required this.pic,
    required this.naam,
  });

  static List<Artist> arts = [
    Artist(pic: 'assets/images/jk.jpeg', naam: 'Jungkook'),
    Artist(pic: 'assets/images/jimin.jpeg', naam: 'Jimin'),
    Artist(pic: 'assets/images/drs.jpeg', naam: 'Darshan Rawal'),
    Artist(pic: 'assets/images/jubin.jpeg', naam: 'Jubin Nautyal'),
    Artist(pic: 'assets/images/shreya.jpeg', naam: 'Shreya Ghosla'),
    Artist(pic: 'assets/images/selena.jpeg', naam: 'Selena Gomez'),
    Artist(pic: 'assets/images/lata.jpeg', naam: 'Lata MAngeshkar'),
    Artist(pic: 'assets/images/kk.jpeg', naam: 'KK'),
    Artist(pic: 'assets/images/siddhu.jpeg', naam: 'Siddhu Moosewala'),
  ];
}

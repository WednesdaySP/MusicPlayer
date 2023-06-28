class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
        title: 'Alone',
        description: 'Alen Walker',
        url: 'assets/audio/Alone(PaglaSongs).mp3',
        coverUrl: 'assets/images/Alan Walker-Alone.png'),
    Song(
        title: 'Maan Meri Jaan',
        description: 'King',
        url: 'assets/audio/Maan Meri Jaan(PagalWorld.com.se).mp3',
        coverUrl: 'assets/images/app2.webp'),
    Song(
        title: 'Pehli Baarish Mein',
        description: 'Darshan Rawal',
        url: 'assets/audio/_Pehli Baarish Mein(PagalWorld.com.se).mp3',
        coverUrl: 'assets/images/app2.webp'),
    Song(
        title: 'Tere Hawaale',
        description: 'Arijit Singh',
        url: 'assets/audio/Tere Hawaale(PagalWorld.com.se).mp3',
        coverUrl: 'assets/images/app2.webp'),
    Song(
        title: 'Maan Meri Jaan',
        description: 'King',
        url: 'assets/audio/Maan Meri Jaan(PagalWorld.com.se).mp3',
        coverUrl: 'assets/images/app2.webp'),
    Song(
        title: 'DjMusic',
        description: 'music',
        url: 'assets/audio/Maan Meri Jaan(PagalWorld.com.se).mp3',
        coverUrl: 'assets/images/app2.webp'),
  ];
}

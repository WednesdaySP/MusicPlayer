class TopScroll {
  final String title;
  final String description;
  final String music;
  final String imageUrl;

  TopScroll({
    required this.title,
    required this.description,
    required this.music,
    required this.imageUrl,
  });

  static List<TopScroll> playlists = [
    TopScroll(
        title: 'Malang Sajna',
        description: 'Sachit Parampara',
        music: 'assets/audio/Malang Sajna(PagalWorld.com.se).mp3',
        imageUrl: 'assets/images/malangsajna.jpeg'),
    TopScroll(
        title: 'Love me like you do',
        description: 'Elle Goulding',
        music: 'assets/audio/Love-Me-Like-You-Do(PaglaSongs).mp3',
        imageUrl: 'assets/images/loveme.jpeg'),
    TopScroll(
        title: 'Devil',
        description: 'Siddhu Moosewala',
        music: 'assets/audio/Devil(PagalWorld.com.se).mp3',
        imageUrl: 'assets/images/devil.jpeg'),
    TopScroll(
        title: 'Tu hai to muje',
        description: 'Sachit Parampara',
        music:
            'assets/audio/Tu Hai To Mujhe Phir Aur Kya Chahiye(PagalWorld.com.se).mp3',
        imageUrl: 'assets/images/tuhto.jpeg'),
    TopScroll(
        title: 'Rattan Lambiya',
        description: 'Sachit Parampara',
        music: 'assets/audio/Raatan Lambiyan(PagalWorld.com.se).mp3',
        imageUrl: 'assets/images/rattalambiya.jpeg'),
    TopScroll(
        title: 'Tere hawale',
        description: 'Sachit Parampara',
        music: 'assets/audio/Tere Hawaale(PagalWorld.com.se).mp3',
        imageUrl: 'assets/images/terehawale.jpeg'),
    TopScroll(
        title: 'Maan meri jaan',
        description: 'King',
        music: 'assets/audio/Maan Meri Jaan(PagalWorld.com.se).mp3',
        imageUrl: 'assets/images/maanmerijan.jpeg'),
    TopScroll(
        title: 'Kahani Suno',
        description: 'Sachit Parampara',
        music: 'assets/audio/Kahani Suno(PagalWorld.com.se).mp3',
        imageUrl: 'assets/images/kahanisuno.jpeg'),
  ];
}

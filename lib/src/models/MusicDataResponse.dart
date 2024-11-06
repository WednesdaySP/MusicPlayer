

class MusicDataResponse{

  String? id;
  String? title;
  String? album;
  String? artist;
  String? genre;
  String? source;
  String? image;
  int? trackNumber;
  int? totalTrackCount;
  int? duration;
  String? site;

  MusicDataResponse({
    required this.id,
    required  this.title,
    required this.album,
    required this.artist,
    required this.genre,
    required this.source,
    required  this.image,
    required this.trackNumber,
    required  this.totalTrackCount,
    required this.duration,
    required this.site});

  factory MusicDataResponse.fromJson(Map<String,dynamic> json){

    return MusicDataResponse(
        id:json["id"],
        title:json['title'],
        album:json['album'],
        artist:json['artist'],
        genre:json['genre'],
        source:json['source'],
        image:json['image'],
        trackNumber:json['trackNumber'],
        totalTrackCount:json['totalTrackCount'],
        duration:json['duration'],
        site:json['site']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['album'] = this.album;
    data['artist'] = this.artist;
    data['genre'] = this.genre;
    data['source'] = this.source;
    data['image'] = this.image;
    data['trackNumber'] = this.trackNumber;
    data['totalTrackCount'] = this.totalTrackCount;
    data['duration'] = this.duration;
    data['site'] = this.site;
    return data;
  }
}





// {
// 	"music": [{
// 			"id": "wake_up_01",
// 			"title": "Intro - The Way Of Waking Up (feat. Alan Watts)",
// 			"album": "Wake Up",
// 			"artist": "The Kyoto Connection",
// 			"genre": "Electronic",
// 			"source": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/01_-_Intro_-_The_Way_Of_Waking_Up_feat_Alan_Watts.mp3",
// 			"image": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
// 			"trackNumber": 1,
// 			"totalTrackCount": 13,
// 			"duration": 90,
// 			"site": "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
// 		},
// 		{
// 			"id": "wake_up_02",
// 			"title": "Geisha",
// 			"album": "Wake Up",
// 			"artist": "The Kyoto Connection",
// 			"genre": "Electronic",
// 			"source": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/02_-_Geisha.mp3",
// 			"image": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
// 			"trackNumber": 2,
// 			"totalTrackCount": 13,
// 			"duration": 267,
// 			"site": "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
// 		},
// 		{
// 			"id": "wake_up_03",
// 			"title": "Voyage I - Waterfall",
// 			"album": "Wake Up",
// 			"artist": "The Kyoto Connection",
// 			"genre": "Electronic",
// 			"source": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/03_-_Voyage_I_-_Waterfall.mp3",
// 			"image": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
// 			"trackNumber": 3,
// 			"totalTrackCount": 13,
// 			"duration": 264,
// 			"site": "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
// 		},
// 		{
// 			"id": "wake_up_04",
// 			"title": "The Music In You",
// 			"album": "Wake Up",
// 			"artist": "The Kyoto Connection",
// 			"genre": "Electronic",
// 			"source": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/04_-_The_Music_In_You.mp3",
// 			"image": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
// 			"trackNumber": 4,
// 			"totalTrackCount": 13,
// 			"duration": 223,
// 			"site": "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
// 		},
// 		{
// 			"id": "wake_up_05",
// 			"title": "The Calm Before The Storm",
// 			"album": "Wake Up",
// 			"artist": "The Kyoto Connection",
// 			"genre": "Electronic",
// 			"source": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/05_-_The_Calm_Before_The_Storm.mp3",
// 			"image": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
// 			"trackNumber": 5,
// 			"totalTrackCount": 13,
// 			"duration": 229,
// 			"site": "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
// 		},
// 		{
// 			"id": "wake_up_06",
// 			"title": "No Pain, No Gain",
// 			"album": "Wake Up",
// 			"artist": "The Kyoto Connection",
// 			"genre": "Electronic",
// 			"source": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/06_-_No_Pain_No_Gain.mp3",
// 			"image": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
// 			"trackNumber": 6,
// 			"totalTrackCount": 13,
// 			"duration": 304,
// 			"site": "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
// 		},
// 		{
// 			"id": "wake_up_07",
// 			"title": "Voyage II - Satori",
// 			"album": "Wake Up",
// 			"artist": "The Kyoto Connection",
// 			"genre": "Electronic",
// 			"source": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/07_-_Voyage_II_-_Satori.mp3",
// 			"image": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
// 			"trackNumber": 7,
// 			"totalTrackCount": 13,
// 			"duration": 256,
// 			"site": "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
// 		},
// 		{
// 			"id": "wake_up_08",
// 			"title": "Reveal the Magic",
// 			"album": "Wake Up",
// 			"artist": "The Kyoto Connection",
// 			"genre": "Electronic",
// 			"source": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/08_-_Reveal_the_Magic.mp3",
// 			"image": "https://storage.googleapis.com/uamp/The_Kyoto_Connection_-_Wake_Up/art.jpg",
// 			"trackNumber": 8,
// 			"totalTrackCount": 13,
// 			"duration": 293,
// 			"site": "http://freemusicarchive.org/music/The_Kyoto_Connection/Wake_Up_1957/"
// 		}
// 	]
// }
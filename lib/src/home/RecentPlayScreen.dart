import 'package:appcontainer/src/models/TopScrollModel.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart' as rxdart;

import '../widgets/player_buttons.dart';
import '../widgets/seekbar.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  TopScroll playlist = Get.arguments ?? TopScroll.playlists[0];

  @override
  void initState() {
    super.initState();

    audioPlayer.setAudioSource(
      ConcatenatingAudioSource(
        children: [
          AudioSource.uri(
            Uri.parse('asset:///${playlist.music}'),
          ),
          AudioSource.uri(
            Uri.parse('asset:///${TopScroll.playlists[1].music}'),
          ),
          AudioSource.uri(
            Uri.parse('asset:///${TopScroll.playlists[2].music}'),
          ),
          AudioSource.uri(
            Uri.parse('asset:///${TopScroll.playlists[3].music}'),
          ),
          AudioSource.uri(
            Uri.parse('asset:///${TopScroll.playlists[4].music}'),
          ),
          AudioSource.uri(
            Uri.parse('asset:///${TopScroll.playlists[5].music}'),
          ),
          AudioSource.uri(
            Uri.parse('asset:///${TopScroll.playlists[6].music}'),
          ),
          AudioSource.uri(
            Uri.parse('asset:///${TopScroll.playlists[7].music}'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Stream<SeekBarData> get _seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
          audioPlayer.positionStream, audioPlayer.durationStream, (
        Duration position,
        Duration? duration,
      ) {
        return SeekBarData(
          position,
          duration ?? Duration.zero,
        );
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            playlist.imageUrl,
            fit: BoxFit.cover,
          ),
          const _BackgroundFilter(),
          _MusicPlayer(
              playlist: playlist,
              seekBarDataStream: _seekBarDataStream,
              audioPlayer: audioPlayer)
        ],
      ),
    );
  }
}

class _MusicPlayer extends StatelessWidget {
  const _MusicPlayer({
    super.key,
    required this.playlist,
    required Stream<SeekBarData> seekBarDataStream,
    required this.audioPlayer,
  }) : _seekBarDataStream = seekBarDataStream;
  final TopScroll playlist;

  final Stream<SeekBarData> _seekBarDataStream;
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            playlist.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            playlist.description,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(height: 30),
          StreamBuilder<SeekBarData>(
              stream: _seekBarDataStream,
              builder: (context, snapshot) {
                final positionData = snapshot.data;
                return SeekBar(
                  position: positionData?.position ?? Duration.zero,
                  duration: positionData?.duration ?? Duration.zero,
                  onChangedEnd: audioPlayer.seek,
                );
              }),
          PlayerButtons(audioPlayer: audioPlayer),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 45,
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              IconButton(
                iconSize: 45,
                onPressed: () {},
                icon: Icon(
                  Icons.cloud_download,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BackgroundFilter extends StatelessWidget {
  const _BackgroundFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.0)
            ],
            stops: [
              0.0,
              0.4,
              0.6
            ]).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple.shade200, Colors.purple.shade800],
          ),
        ),
      ),
    );
  }
}

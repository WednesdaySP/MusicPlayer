import 'package:appcontainer/src/models/darshan_model.dart';
import 'package:appcontainer/src/widgets/player_buttons.dart';
import 'package:appcontainer/src/widgets/seekbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart' as rxdart;
import 'package:just_audio/just_audio.dart';

class BlueFamily extends StatefulWidget {
  const BlueFamily({super.key});

  @override
  State<BlueFamily> createState() => _BlueFamilyState();
}

class _BlueFamilyState extends State<BlueFamily> {
   AudioPlayer audioPlayer = AudioPlayer();
  Darshan superhit = Get.arguments ?? Darshan.superhits[0];

  @override
void initState() {
    super.initState();

    audioPlayer.setAudioSource(
      ConcatenatingAudioSource(
        children: [
          AudioSource.uri(
            Uri.parse('asset:///${superhit.gaana}'),
          ),
            AudioSource.uri(
            Uri.parse('asset:///${Darshan.superhits[1].gaana}'),
          ),
              AudioSource.uri(
            Uri.parse('asset:///${Darshan.superhits[2].gaana}'),
          ),
              AudioSource.uri(
            Uri.parse('asset:///${Darshan.superhits[3].gaana}'),
          ),
              AudioSource.uri(
            Uri.parse('asset:///${Darshan.superhits[4].gaana}'),
          ),
              AudioSource.uri(
            Uri.parse('asset:///${Darshan.superhits[5].gaana}'),
          ),
              AudioSource.uri(
            Uri.parse('asset:///${Darshan.superhits[6].gaana}'),
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
            superhit.image,
            fit: BoxFit.cover,
          ),
          const _BackgroundFilter(),
          _MusicPlayer(
              superhit: superhit,
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
    required this.superhit,
    required Stream<SeekBarData> seekBarDataStream,
    required this.audioPlayer,
  }) : _seekBarDataStream = seekBarDataStream;
  final Darshan superhit;

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
            superhit.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            superhit.description,
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


import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtub extends StatefulWidget {
  const Youtub({super.key});

  @override
  State<Youtub> createState() => _YoutubState();
}

class _YoutubState extends State<Youtub> {
  late YoutubePlayerController _youtubePlayerController;
  final _yourl = 'https://www.youtube.com/watch?v=id1E0lqnUtY';
  @override
  void initState() {
    final yTubId = YoutubePlayer.convertUrlToId(_yourl);
    print(yTubId);
    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: yTubId!,
        flags: const YoutubePlayerFlags(loop: true, autoPlay: false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.blue),
      margin: const EdgeInsets.all(20),
      height: 200,
      width: 350,
      child: YoutubePlayer(
        controller: _youtubePlayerController,
        showVideoProgressIndicator: true,
        liveUIColor: Colors.red,
        progressIndicatorColor: Colors.amber,
        progressColors: const ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
      ),
    );
  }
}

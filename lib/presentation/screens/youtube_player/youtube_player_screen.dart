import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerScreen extends StatelessWidget {
  const YoutubePlayerScreen({super.key});

  static const name = 'youtube_player_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Youtube Player"),
      ),
      body: Player(),
    );
  }
}

class Player extends StatelessWidget {
  Player({super.key});

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'Gj6LEhqwtMA',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      liveUIColor: Colors.blue,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class ViewFullTvVideoPage extends StatelessWidget {
  ViewFullTvVideoPage({Key? key}) : super(key: key);

  final YoutubePlayerController _youtubePlayerController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=jfKfPfyJRdk")!,
      flags: const YoutubePlayerFlags(
          autoPlay: true,
          hideControls: true,
          isLive: true,
          hideThumbnail: true,
          showLiveFullscreenButton: true,
          controlsVisibleAtStart: true
      )
  );

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: _youtubePlayerController,),
      builder: (p0, p1) {
        return Scaffold(
          body: Column(
            children: [
              p1
            ],
          ),
        );
      },
    );
  }
}

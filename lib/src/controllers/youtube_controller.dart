import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeController {
  late YoutubePlayerController controller;

  void initializeController(String videoUrl) {
    String? videoId = YoutubePlayer.convertUrlToId(videoUrl);
    controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        forceHD: true,
      ),
    );
  }
}

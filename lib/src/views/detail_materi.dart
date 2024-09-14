import 'package:apivi/constant/colors_constant.dart';
import 'package:apivi/constant/image_constant.dart';
import 'package:apivi/constant/textstyle.dart';
import 'package:apivi/src/controllers/youtube_controller.dart';
import 'package:apivi/src/models/materi_models.dart';
import 'package:apivi/src/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailMateri extends StatefulWidget {
  const DetailMateri({super.key, required this.materi});

  final MateriModels materi;

  @override
  State<DetailMateri> createState() => _DetailMateriState();
}

class _DetailMateriState extends State<DetailMateri> {
  final YoutubeController _youtubeController = YoutubeController();

  @override
  void initState() {
    super.initState();
    _youtubeController.initializeController(widget.materi.linkVideo);
  }

  @override
  void dispose() {
    _youtubeController.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      onExitFullScreen: () {
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      },
      player: YoutubePlayer(
        controller: _youtubeController.controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: AppColors.red,
        progressColors: const ProgressBarColors(
          playedColor: AppColors.white,
          handleColor: AppColors.white,
        ),
        topActions: [
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              _youtubeController.controller.metadata.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
        onReady: () {
          _youtubeController.controller.addListener(() {});
        },
      ),
      builder: (context, player) => Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.background,
          leading: IconButton(
              onPressed: () async {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(Icons.arrow_back_rounded,
                  color: AppColors.greenDark)),
        ),
        body: Column(
          children: [
            Image.asset(AppImage.virus, width: 300, fit: BoxFit.contain),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: widget.materi.color,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.materi.title, style: AppStyle.titlecard),
                        Text(widget.materi.subtitle, style: AppStyle.subtitle),
                        const SizedBox(height: 20),
                        const Text("Video Pembelajaran",
                            style: AppStyle.titlecard),
                        player,
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

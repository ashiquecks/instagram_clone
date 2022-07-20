import 'package:card_swiper/card_swiper.dart';
import 'package:chewie/chewie.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/DATA/asset_datas.dart';
import 'package:instagram/SCREENS/reels_content_section.dart';
import 'package:instagram/const.dart';
import 'package:video_player/video_player.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  final List<String> videos = [
    // 'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
  ];

  // VideoPlayerController? _controller;
  // Future<void>? _initializeVideoPlayerFuture;

  // @override
  // void initState() {
  //   _controller = VideoPlayerController.network(
  //       "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
  //   //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
  //   _initializeVideoPlayerFuture = _controller!.initialize();
  //   _controller!.setLooping(true);
  //   _controller!.setVolume(1.0);
  //   _controller!.play();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Reels",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.camera_alt_outlined,
            size: 30,
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return ReelsContentSection(src: videos[index]);
              },
              itemCount: videos.length,
              scrollDirection: Axis.vertical,
            ),
          ),
          Positioned(
            left: 10,
            bottom: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                reelsLabelRow(),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "wedding function",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                const Text(
                  "Vikram movie songs in tamil",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: floatingIcons(),
    );
  }
}

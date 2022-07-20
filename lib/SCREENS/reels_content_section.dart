import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:instagram/DATA/asset_datas.dart';
import 'package:video_player/video_player.dart';

class ReelsContentSection extends StatefulWidget {
  final String src;
  const ReelsContentSection({Key? key, required this.src}) : super(key: key);

  @override
  State<ReelsContentSection> createState() => _ReelsContentSectionState();
}

class _ReelsContentSectionState extends State<ReelsContentSection> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _liked = false;
  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(widget.src);
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControls: false,
      looping: true,
      // fullScreenByDefault: true,
      // allowedScreenSleep: true,
      // allowFullScreen: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _chewieController != null &&
              _chewieController!.videoPlayerController.value.isInitialized
          ? Chewie(controller: _chewieController!)
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

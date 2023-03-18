import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoDuck extends StatefulWidget {
  const VideoDuck({Key? key}) : super(key: key);

  @override
  State<VideoDuck> createState() => _VideoDuckState();
}

class _VideoDuckState extends State<VideoDuck> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'img/graph.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    _controller.play();
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

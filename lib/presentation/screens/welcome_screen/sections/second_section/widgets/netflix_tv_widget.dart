import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NetflixTvWidget extends StatefulWidget {
  const NetflixTvWidget({Key? key}) : super(key: key);

  @override
  State<NetflixTvWidget> createState() => _NetflixTvWidgetState();
}

class _NetflixTvWidgetState extends State<NetflixTvWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-tv-in-0819.m4v')
      ..addListener(() => setState(() {}))
      ..initialize().then((_) => _controller.play())
      ..setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          width: _size.width / 2.4,
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller))
              : const SizedBox(),
        ),
        Image.asset(
          "assets/images/welcome/tv.png",
          width: _size.width / 2.4,
        ),
      ],
    );
  }
}

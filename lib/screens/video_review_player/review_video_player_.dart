import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TikTokVideoPlayer extends StatefulWidget {
  final String videoPath;
  final String userProfileImage;

  TikTokVideoPlayer({required this.videoPath, required this.userProfileImage});

  @override
  _TikTokVideoPlayerState createState() => _TikTokVideoPlayerState();
}

class _TikTokVideoPlayerState extends State<TikTokVideoPlayer> {
  late VideoPlayerController _videoController;
  late Future<void> _initializeVideoPlayerFuture;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
      });
    _initializeVideoPlayerFuture = _videoController.initialize();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_videoController.value.isPlaying) {
      _videoController.pause();
    } else {
      _videoController.play();
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: _togglePlayPause,
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _videoController.value.aspectRatio,
                  child: VideoPlayer(_videoController),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          child: _isPlaying
              ? SizedBox.shrink()
              : GestureDetector(
            onTap: _togglePlayPause,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 80,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(widget.userProfileImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

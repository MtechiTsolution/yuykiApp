// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class TikTokVideoPlayer extends StatefulWidget {
//   final String? url;
//
//   const TikTokVideoPlayer({this.url});
//
//   @override
//   _TikTokVideoPlayerState createState() => _TikTokVideoPlayerState();
// }
//
// class _TikTokVideoPlayerState extends State<TikTokVideoPlayer> {
//   late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//   //  _controller = VideoPlayerController.network('${widget.url}.mp4')
//     _controller = VideoPlayerController.asset('assets/raw/test.mp4')
//       ..initialize().then((_) {
//         setState(() {
//           _controller.play();
//           _controller.setLooping(true);
//         });
//       });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       height: double.infinity,
//       child: _controller.value.isInitialized
//           ? GestureDetector(
//               onTap: () {
//                 if (_controller.value.isPlaying) {
//                   _controller.pause();
//                 } else {
//                   _controller.play();
//                 }
//               },
//               child: AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(
//                   _controller,
//                 ),
//               ),
//             )
//           : loadingVideo(),
//     );
//   }
//
//   Widget loadingVideo() => Container(
//         color: Colors.black,
//         child: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
// }

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Replace 'assets/video.mp4' with your actual video asset path
    _controller = VideoPlayerController.asset('assets/video.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown and set the state to update the widget
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        )
            : CircularProgressIndicator(), // Show a loading indicator while initializing
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

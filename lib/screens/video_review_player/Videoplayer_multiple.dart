
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_style.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/custom_image_view.dart';

class Video_multi_player extends StatefulWidget {
  final String videoPath;
  final String userProfileImage;

  Video_multi_player({
    required this.videoPath,
    required this.userProfileImage,
  });

  @override
  State<Video_multi_player> createState() => _Video_multi_playerState();
}


class _Video_multi_playerState extends State<Video_multi_player> {
  late VideoPlayerController _videoController;
  late Future<void> _initializeVideoPlayerFuture;
  bool _isPlaying = false;
  bool _showPlayButton = true;

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

  void _onVideoTap() {
    if (_isPlaying) {
      _videoController.pause();
    } else {
      _videoController.play();
    }
    setState(() {
      _isPlaying = !_isPlaying;
      _showPlayButton = !_showPlayButton;
    });
  }

  int _selectedIndex = 0;




  Widget _buildPlayButton() {
    return GestureDetector(
      onTap: _togglePlayPause,
      child: Icon(
        Icons.play_arrow,
        color: Colors.white,
        size: 48.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.transparent,
        body:
        Stack(
          fit: StackFit.expand,
          children: [


            ListView(
              children: [
                // Video Player Content with Review Section
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: GestureDetector(
                        onTap: _onVideoTap,
                        child: FutureBuilder(
                          future: _initializeVideoPlayerFuture,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.done) {
                              return AspectRatio(
                                aspectRatio: _videoController.value.aspectRatio,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    VideoPlayer(_videoController),
                                    if (_showPlayButton) _buildPlayButton(),
                                  ],
                                ),
                              );
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      left: 0,
                      right: 0,
                      child: _buildProfileReviewStars(),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: GestureDetector(
                        onTap: _onVideoTap,
                        child: FutureBuilder(
                          future: _initializeVideoPlayerFuture,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.done) {
                              return AspectRatio(
                                aspectRatio: _videoController.value.aspectRatio,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    VideoPlayer(_videoController),
                                    if (_showPlayButton) _buildPlayButton(),
                                  ],
                                ),
                              );
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      left: 0,
                      right: 0,
                      child: _buildProfileReviewStars(),
                    ),
                  ],
                ),

                // ... Add more video items with review sections ...
              ],
            ),



            // Custom App Bar
            _buildCustomAppBar(),


            // Bottom Navigation Bar
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: CustomImageView(
                        onTap: (){

                        },
                        svgPath: ImageConstant.imgFrameWhiteA700,
                        height: getSize(27),
                        width: getSize(27),
                        color: _selectedIndex == 0 ? Colors.white : Colors.black, // Change icon color when selected
                      ),
                    ),
                    Text(
                      enUs["lbl_88"]!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              onTap: (){

                              },
                              imagePath: ImageConstant.imgHeart21,
                              height: getSize(27),
                              width: getSize(27),
                              color: _selectedIndex == 0 ? Colors.white : Colors.black, // Change icon color when selected
                            ),
                            Text(
                              enUs["lbl_8"]!,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              onTap: (){

                              },
                              svgPath: ImageConstant.imgVector,
                              height: getSize(27),
                              color: _selectedIndex == 0 ? Colors.white : Colors.black, // Change icon color when selected
                              width: getSize(27),
                            ),
                            Text(
                              enUs["lbl_8"]!,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              onTap: (){

                              },
                              svgPath: ImageConstant.imgFrameWhiteA70020x23,
                              height: getVerticalSize(27),
                              width: getHorizontalSize(27),
                              color: _selectedIndex == 0 ? Colors.white : Colors.black, // Change icon color when selected
                             // alignment: Alignment.center,
                            ),
                            Text(
                              enUs["lbl_share"]!,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          onTap: (){

                          },
                          svgPath: ImageConstant.imgBookmark,
                          height: getVerticalSize(27),
                          color: _selectedIndex == 0 ? Colors.white : Colors.red, // Change icon color when selected
                          width: getHorizontalSize(27),
                        ),
                        Text(
                          enUs["lbl_save"]!,

                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
              ],)

            ),
          ],
        ),
      ),
    );
  }


  Widget _buildProfileReviewStars() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(widget.userProfileImage),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Very nice bolling ,good to see this , \nwe are so called good player ',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_half,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCustomAppBar() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child:
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 56, // Adjust the height as needed
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                // Navigate back when back arrow is pressed
                Navigator.pop(context);
              },
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(widget.userProfileImage),
            ),
          ],
        ),
      ),
    );
  }


}



void main() {
  runApp(MaterialApp(
    home: Video_multi_player(
      videoPath: 'assets/sample_video.mp4',
      userProfileImage: 'assets/user_profile.png',
    ),
  ));
}
























//
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class Video_multi_player extends StatefulWidget {
//   @override
//   State<Video_multi_player> createState() => _Video_multi_playerState();
// }
//
// class _Video_multi_playerState extends State<Video_multi_player> {
//   late PageController _pageController;
//   int _currentIndex = 0;
//
//   List<String> videoPaths = [
//     'assets/raw/test.mp4',
//     'assets/raw/test.mp4',
//     'assets/raw/test.mp4',
//   ];
//
//   late VideoPlayerController _videoController;
//   late Future<void> _initializeVideoPlayerFuture;
//   bool _isPlaying = false;
//   bool _showPlayButton = true;
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//     _videoController = VideoPlayerController.asset(videoPaths[_currentIndex])
//       ..initialize().then((_) {
//         setState(() {});
//       });
//     _initializeVideoPlayerFuture = _videoController.initialize();
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     _videoController.dispose();
//     super.dispose();
//   }
//
//   void _togglePlayPause() {
//     if (_videoController.value.isPlaying) {
//       _videoController.pause();
//     } else {
//       _videoController.play();
//     }
//     setState(() {
//       _isPlaying = !_isPlaying;
//     });
//   }
//
//   void _onVideoTap() {
//     if (_isPlaying) {
//       _videoController.pause();
//     } else {
//       _videoController.play();
//     }
//     setState(() {
//       _isPlaying = !_isPlaying;
//       _showPlayButton = !_showPlayButton;
//     });
//   }
//
//   void _handlePageChange(int index) {
//     setState(() {
//       _currentIndex = index;
//       _videoController = VideoPlayerController.asset(videoPaths[_currentIndex])
//         ..initialize().then((_) {
//           setState(() {});
//         });
//       _initializeVideoPlayerFuture = _videoController.initialize();
//     });
//   }
//
//   Widget _buildPlayButton() {
//     return GestureDetector(
//       onTap: _togglePlayPause,
//       child: Icon(
//         Icons.play_arrow,
//         color: Colors.white,
//         size: 48.0,
//       ),
//     );
//   }
// // Inside the _buildVideoPage() method, add the Positioned widget
//
//   Widget _buildVideoPage(String videoPath) {
//     return GestureDetector(
//       onTap: _onVideoTap,
//       child: FutureBuilder(
//         future: _initializeVideoPlayerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return AspectRatio(
//               aspectRatio: _videoController.value.aspectRatio,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   VideoPlayer(_videoController),
//                   if (_showPlayButton) _buildPlayButton(),
//                   _buildCustomAppBar(),
//                   Positioned(
//                     bottom: 70,
//                     left: 16,
//                     right: 16,
//                     child: _buildProfileReviewStars(),
//                   ),
//
//                 ],
//               ),
//             );
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('TikTok Clone'),
//       // ),
//       body: PageView.builder(
//         controller: _pageController,
//         itemCount: videoPaths.length,
//         onPageChanged: _handlePageChange,
//         itemBuilder: (context, index) {
//           return _buildVideoPage(videoPaths[index]);
//         },
//       ),
//
//
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.transparent,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             IconButton(
//               icon: Icon(Icons.favorite),
//               onPressed: () {
//                 // Handle favorite action
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.comment),
//               onPressed: () {
//                 // Handle comment action
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.share),
//               onPressed: () {
//                 // Handle share action
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.save),
//               onPressed: () {
//                 // Handle save action
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildProfileReviewStars() {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.6),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           CircleAvatar(
//             radius: 20,
//             //backgroundImage: AssetImage(widget.userProfileImage),
//           ),
//           SizedBox(width: 10,),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Very nice bolling ,good to see this , \nwe are so called good player ',
//                 style: TextStyle(color: Colors.white),
//               ),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.star,
//                     color: Colors.yellow,
//                   ),
//                   Icon(
//                     Icons.star,
//                     color: Colors.yellow,
//                   ),
//                   Icon(
//                     Icons.star,
//                     color: Colors.yellow,
//                   ),
//                   Icon(
//                     Icons.star_half,
//                     color: Colors.yellow,
//                   ),
//                   Icon(
//                     Icons.star_border,
//                     color: Colors.yellow,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//
//   Widget _buildCustomAppBar() {
//     return Positioned(
//       top: 0,
//       left: 0,
//       right: 0,
//       child:
//       Container(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         height: 56, // Adjust the height as needed
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(
//               icon: Icon(Icons.arrow_back, color: Colors.white),
//               onPressed: () {
//                 // Navigate back when back arrow is pressed
//                 Navigator.pop(context);
//               },
//             ),
//             CircleAvatar(
//               radius: 20,
//              // backgroundImage: AssetImage(widget.userProfileImage),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: Video_multi_player(),
//   ));
// }
//



//
//
// Widget _buildVideoPage(String videoPath) {
//   return GestureDetector(
//     onTap: _onVideoTap,
//     child: FutureBuilder(
//       future: _initializeVideoPlayerFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return AspectRatio(
//             aspectRatio: _videoController.value.aspectRatio,
//             child: Stack(
//               alignment: Alignment.center,
//               children: [
//                 VideoPlayer(_videoController),
//                 if (_showPlayButton) _buildPlayButton(),
//                 Positioned(
//                   top: 0, // Adjust the top position as needed
//                   left: 0,
//                   right: 0,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           IconButton(
//                             icon: Icon(Icons.arrow_back),
//                             onPressed: () {
//                               // Handle back action
//                             },
//                           ),
//                           // Add your profile image widget here
//                         ],
//                       ),
//                       // Add your _buildProfileReviewStars() widget here
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 70,
//                   left: 16,
//                   right: 16,
//                   child: _buildProfileReviewStars(),
//                 ),
//               ],
//             ),
//           );
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     ),
//   );
// }

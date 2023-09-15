import 'package:example/screens/video_review_player/review_video_player_.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../video_review_player/Videoplayer_multiple.dart';

class Bussines_profile_video_reviews extends StatefulWidget {
  //const Bussines_profile_video_reviews({super.key});

  @override
  State<Bussines_profile_video_reviews> createState() =>
      _Bussines_profile_video_reviewsState();
}

class _Bussines_profile_video_reviewsState
    extends State<Bussines_profile_video_reviews> {
  late VideoPlayerController _videoController;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(
      'assets/raw/test.mp4', // Replace with your actual video asset path
    )..initialize().then((_) {
        setState(() {});
      });
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
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: getPadding(top: 14, bottom: 15),
              child: IntrinsicWidth(
                  child: SizedBox(
                      height: getVerticalSize(217),
                      width: getHorizontalSize(500),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.bottomRight,

    //navigate on next video player page
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Video_multi_player( videoPath: 'assets/raw/test.mp4',
                                            userProfileImage:
                                                'assets/images/step-three.png',)));
                         // Navigator.push(context, MaterialPageRoute(builder:  (context)=>Video_multi_player()));
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => TikTokVideoPlayer(
                                  //       videoPath: 'assets/raw/test.mp4',
                                  //       userProfileImage:
                                  //           'assets/images/step-three.png',
                                  //     ),
                                  //   ),
                                  // );
                                },
                                child: Row(children: [

  //video view container
                                  Container(
                                      height: getVerticalSize(180),
                                      width: getHorizontalSize(127),
                                      margin: getMargin(left: 8),
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        // Adjust the radius as needed
                                        color: Colors
                                            .black, // Add any desired background color
                                      ),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: GestureDetector(
                                                onTap: _togglePlayPause,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    VideoPlayer(
                                                        _videoController),
                                                    Container(
                                                      width:
                                                          getHorizontalSize(50),
                                                      height:
                                                          getHorizontalSize(50),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withOpacity(0.5),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Icon(
                                                        _isPlaying
                                                            ? Icons.pause
                                                            : Icons.play_arrow,
                                                        color: Colors.black,
                                                        size: getHorizontalSize(
                                                            32),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 5, right: 4),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 1),
                                                              child: Text(
                                                                  enUs[
                                                                      "lbl_shopping"]!,
                                                                  overflow: TextOverflow.ellipsis,
                                                                  textAlign: TextAlign.left,
                                                                  style: AppStyle.txtPoppinsBold9)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 1),
                                                              child: Text(
                                                                  enUs[
                                                                      "lbl_austin_usa"]!,
                                                                  overflow: TextOverflow.ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium6)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 43),
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgEllipse5414x15,
                                                                        height: getVerticalSize(
                                                                            14),
                                                                        width: getHorizontalSize(
                                                                            15),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            7)),
                                                                        margin: getMargin(
                                                                            top:
                                                                                65)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                2,
                                                                            top:
                                                                                64),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Text(enUs["lbl_joj"]!, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold6),
                                                                            ])),
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      19),
                                                              width:
                                                                  getHorizontalSize(
                                                                      118),
                                                              margin: getMargin(
                                                                  top: 1),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgVectorAmber400,
                                                                        height:
                                                                            getVerticalSize(
                                                                                5),
                                                                        width: getHorizontalSize(
                                                                            4),
                                                                        alignment:
                                                                            Alignment
                                                                                .topLeft,
                                                                        margin: getMargin(
                                                                            left:
                                                                                22)),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: SizedBox(
                                                                            width: getHorizontalSize(
                                                                                118),
                                                                            child: Text(enUs["msg_lorem_ipsum_dolor"]!,
                                                                                maxLines: null,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtPoppinsMedium5)))
                                                                  ]))
                                                        ])))
                                          ])),

                                  Container(
                                      height: getVerticalSize(180),
                                      width: getHorizontalSize(127),
                                      margin: getMargin(left: 8),
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        // Adjust the radius as needed
                                        color: Colors
                                            .black, // Add any desired background color
                                      ),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: GestureDetector(
                                                onTap: _togglePlayPause,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    VideoPlayer(
                                                        _videoController),
                                                    Container(
                                                      width:
                                                      getHorizontalSize(50),
                                                      height:
                                                      getHorizontalSize(50),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withOpacity(0.5),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Icon(
                                                        _isPlaying
                                                            ? Icons.pause
                                                            : Icons.play_arrow,
                                                        color: Colors.black,
                                                        size: getHorizontalSize(
                                                            32),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 5, right: 4),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                              getPadding(
                                                                  left: 1),
                                                              child: Text(

                                                                  enUs[
                                                                  "lbl_shopping"]!,
                                                                  overflow: TextOverflow.ellipsis,
                                                                  textAlign: TextAlign.left,
                                                                  style: AppStyle.txtPoppinsBold9)),
                                                          Padding(
                                                              padding:
                                                              getPadding(
                                                                  left: 1),
                                                              child: Text(
                                                                  enUs[
                                                                  "lbl_austin_usa"]!,
                                                                  overflow: TextOverflow.ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium6)),
                                                          Padding(
                                                              padding:
                                                              getPadding(
                                                                  top: 43),
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                        ImageConstant
                                                                            .imgEllipse5414x15,
                                                                        height: getVerticalSize(
                                                                            14),
                                                                        width: getHorizontalSize(
                                                                            15),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            7)),
                                                                        margin: getMargin(
                                                                            top:
                                                                            65)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                            2,
                                                                            top:
                                                                            64),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Text(enUs["lbl_joj"]!, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold6),
                                                                            ])),
                                                                  ])),
                                                          Container(
                                                              height:
                                                              getVerticalSize(
                                                                  19),
                                                              width:
                                                              getHorizontalSize(
                                                                  118),
                                                              margin: getMargin(
                                                                  top: 1),
                                                              child: Stack(
                                                                  alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                        ImageConstant
                                                                            .imgVectorAmber400,
                                                                        height:
                                                                        getVerticalSize(
                                                                            5),
                                                                        width: getHorizontalSize(
                                                                            4),
                                                                        alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                        margin: getMargin(
                                                                            left:
                                                                            22)),
                                                                    Align(
                                                                        alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                        child: SizedBox(
                                                                            width: getHorizontalSize(
                                                                                118),
                                                                            child: Text(enUs["msg_lorem_ipsum_dolor"]!,
                                                                                maxLines: null,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtPoppinsMedium5)))
                                                                  ]))
                                                        ])))
                                          ])),
                                  Container(
                                      height: getVerticalSize(180),
                                      width: getHorizontalSize(127),
                                      margin: getMargin(left: 8),
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        // Adjust the radius as needed
                                        color: Colors
                                            .black, // Add any desired background color
                                      ),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: GestureDetector(
                                                onTap: _togglePlayPause,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    VideoPlayer(
                                                        _videoController),
                                                    Container(
                                                      width:
                                                      getHorizontalSize(50),
                                                      height:
                                                      getHorizontalSize(50),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withOpacity(0.5),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Icon(
                                                        _isPlaying
                                                            ? Icons.pause
                                                            : Icons.play_arrow,
                                                        color: Colors.black,
                                                        size: getHorizontalSize(
                                                            32),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 5, right: 4),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                              getPadding(
                                                                  left: 1),
                                                              child: Text(
                                                                  enUs[
                                                                  "lbl_shopping"]!,
                                                                  overflow: TextOverflow.ellipsis,
                                                                  textAlign: TextAlign.left,
                                                                  style: AppStyle.txtPoppinsBold9)),
                                                          Padding(
                                                              padding:
                                                              getPadding(
                                                                  left: 1),
                                                              child: Text(
                                                                  enUs[
                                                                  "lbl_austin_usa"]!,
                                                                  overflow: TextOverflow.ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium6)),
                                                          Padding(
                                                              padding:
                                                              getPadding(
                                                                  top: 43),
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                        ImageConstant
                                                                            .imgEllipse5414x15,
                                                                        height: getVerticalSize(
                                                                            14),
                                                                        width: getHorizontalSize(
                                                                            15),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            7)),
                                                                        margin: getMargin(
                                                                            top:
                                                                            65)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                            2,
                                                                            top:
                                                                            64),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Text(enUs["lbl_joj"]!, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold6),
                                                                            ])),
                                                                  ])),
                                                          Container(
                                                              height:
                                                              getVerticalSize(
                                                                  19),
                                                              width:
                                                              getHorizontalSize(
                                                                  118),
                                                              margin: getMargin(
                                                                  top: 1),
                                                              child: Stack(
                                                                  alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                        ImageConstant
                                                                            .imgVectorAmber400,
                                                                        height:
                                                                        getVerticalSize(
                                                                            5),
                                                                        width: getHorizontalSize(
                                                                            4),
                                                                        alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                        margin: getMargin(
                                                                            left:
                                                                            22)),
                                                                    Align(
                                                                        alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                        child: SizedBox(
                                                                            width: getHorizontalSize(
                                                                                118),
                                                                            child: Text(enUs["msg_lorem_ipsum_dolor"]!,
                                                                                maxLines: null,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtPoppinsMedium5)))
                                                                  ]))
                                                        ])))
                                          ])),

                                ]))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: getPadding(left: 29, bottom: 15),
                                child: Text(enUs["lbl_reviews"]!,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium22.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(1.1)))))
                      ]))))
        ],
      ),
    );
  }
}

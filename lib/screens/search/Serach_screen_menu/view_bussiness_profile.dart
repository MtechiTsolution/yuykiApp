import 'package:example/screens/search/Serach_screen_menu/view_bussines_profile_location_reviews.dart';
import 'package:flutter/material.dart';

import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_image_view.dart';
import 'Bussines_profile_reviews_videos.dart';
import '../widgets/view_profile_widget.dart';

class View_bussine_profile extends StatefulWidget {
  // const View_bussine_profile({super.key});

  @override
  State<View_bussine_profile> createState() => _View_bussine_profileState();
}

class _View_bussine_profileState extends State<View_bussine_profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                Container(
                    height: getVerticalSize(436),
                    width: getHorizontalSize(392),
                    margin: getMargin(left: 7),
                    child: Stack(alignment: Alignment.bottomCenter, children: [

                      // Profile detail section Top
                      Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              height: getVerticalSize(400),
                              width: getHorizontalSize(392),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle146,
                                        height: getVerticalSize(400),
                                        width: getHorizontalSize(392),
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 26, top: 44),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  // CustomAppBar(
                                                  //     height:
                                                  //         getVerticalSize(28),
                                                  //     leadingWidth: 393,
                                                  //     leading: Container(
                                                  //         height:
                                                  //             getVerticalSize(
                                                  //                 27.999996),
                                                  //         width:
                                                  //             getHorizontalSize(
                                                  //                 23),
                                                  //         margin: getMargin(
                                                  //             left: 26,
                                                  //             right: 344),
                                                  //         child: Stack(
                                                  //             alignment:
                                                  //                 Alignment
                                                  //                     .center,
                                                  //             children: [
                                                  //               AppbarImage(
                                                  //                   height:
                                                  //                   getVerticalSize(
                                                  //                       28),
                                                  //                   width:
                                                  //                   getHorizontalSize(
                                                  //                       23),
                                                  //                   imagePath:
                                                  //                   ImageConstant
                                                  //                       .imgBack13,
                                                  //                   onTap: () {
                                                  //                     onTapBackfourteen();
                                                  //                   }),
                                                  //               AppbarImage(
                                                  //                   height:
                                                  //                   getVerticalSize(
                                                  //                       28),
                                                  //                   width:
                                                  //                   getHorizontalSize(
                                                  //                       23),
                                                  //                   imagePath:
                                                  //                   ImageConstant
                                                  //                       .imgBack13),
                                                  //               AppbarImage(
                                                  //                   height:
                                                  //                   getVerticalSize(
                                                  //                       28),
                                                  //                   width:
                                                  //                   getHorizontalSize(
                                                  //                       23),
                                                  //                   imagePath:
                                                  //                   ImageConstant
                                                  //                       .imgBack13)
                                                  //             ]))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          201),
                                                      margin:
                                                          getMargin(top: 38),
                                                      child: Text(
                                                          enUs[
                                                              "msg_1_almo_inn_the"]!,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBlack15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.75))))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: getMargin(bottom: 21),
                              padding: getPadding(
                                  left: 22, top: 6, right: 22, bottom: 2),
                              decoration:
                                  AppDecoration.gradientWhiteA7000001WhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    //Hours section***************************************
                                    Container(
                                        height: getVerticalSize(17),
                                        width: getHorizontalSize(85),
                                        margin: getMargin(left: 125),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Text(
                                                      enUs[
                                                          "lbl_see_all_hours"]!,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.6)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: SizedBox(
                                                      width:
                                                          getHorizontalSize(84),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  2),
                                                          thickness:
                                                              getVerticalSize(
                                                                  2),
                                                          color: ColorConstant
                                                              .amber300)))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                getPadding(top: 12, right: 105),
                                            child: Text(
                                                enUs["msg_see_all_119_photos"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBlack12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.6))))),
                                    //End Hours section***************************************


                                    //Call section*****************************************
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 29, top: 29, right: 38),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTelephone1,
                                                      height:
                                                          getVerticalSize(37),
                                                      width:
                                                          getHorizontalSize(38),
                                                      margin:
                                                          getMargin(bottom: 1)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVideocamera,
                                                      height:
                                                          getVerticalSize(20),
                                                      width:
                                                          getHorizontalSize(41),
                                                      margin: getMargin(
                                                          left: 82,
                                                          top: 8,
                                                          bottom: 9)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMap11,
                                                      height:
                                                          getVerticalSize(34),
                                                      width:
                                                          getHorizontalSize(30),
                                                      margin: getMargin(
                                                          left: 84, top: 3))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 36, top: 8, right: 25),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        // onTapTxtCall();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 2,
                                                              bottom: 17),
                                                          child: Text(
                                                              enUs["lbl_call"]!,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Black900))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        // onTapTxtShareexperience();
                                                      },
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  64),
                                                          margin: getMargin(
                                                              left: 73),
                                                          child: Text(
                                                              enUs[
                                                                  "msg_share_experience"]!,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Black900))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        //  onTapTxtViewmap();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 66,
                                                              top: 3,
                                                              bottom: 15),
                                                          child: Text(
                                                              enUs[
                                                                  "lbl_view_map"]!,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Black900)))
                                                ]))),
                                    //End call section**************************************


                                    //Do you recommended section*****************************************
                                    Padding(
                                        padding:
                                            getPadding(top: 43, bottom: 21),
                                        child: Text(
                                            enUs["msg_do_you_recommend"]!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.9))))
                                  ]))),

                      //Profile Image
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse57,
                          height: getVerticalSize(104),
                          width: getHorizontalSize(106),
                          radius: BorderRadius.circular(getHorizontalSize(53)),
                          alignment: Alignment.topLeft,
                          margin: getMargin(left: 26, top: 120)),

                      //Open hours and closing hours
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: getPadding(top: 151, right: 89),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: enUs["lbl_open_in"]!,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.6))),
                                    TextSpan(
                                        text: enUs["lbl_8_00am_5_00pm"]!,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w300,
                                            letterSpacing:
                                                getHorizontalSize(0.6)))
                                  ]),
                                  textAlign: TextAlign.left))),

                      // Question section yes, no, Maybe
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                              width: getHorizontalSize(54),
                              margin: getMargin(left: 78),
                              padding: getPadding(
                                  left: 15, top: 4, right: 15, bottom: 4),
                              decoration: AppDecoration.txtFillAmber300
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder6),
                              child: Text(enUs["lbl_yes"]!,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium12.copyWith(
                                      letterSpacing: getHorizontalSize(0.6))))),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                              width: getHorizontalSize(54),
                              margin: getMargin(left: 148),
                              padding: getPadding(
                                  left: 18, top: 5, right: 18, bottom: 5),
                              decoration: AppDecoration.txtFillAmber300
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder6),
                              child: Text(enUs["lbl_no"]!,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium12.copyWith(
                                      letterSpacing: getHorizontalSize(0.6))))),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              width: getHorizontalSize(80),
                              margin: getMargin(right: 90),
                              padding: getPadding(
                                  left: 19, top: 4, right: 19, bottom: 4),
                              decoration: AppDecoration.txtFillAmber300
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder6),
                              child: Text(enUs["lbl_maybe"]!,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium12.copyWith(
                                      letterSpacing: getHorizontalSize(0.6)))))
                    ])),

//menu section

                Container(
                    margin: getMargin(left: 7, top: 14, right: 5),
                    decoration: AppDecoration.fillGray100,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                              padding: getPadding(top: 29),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(enUs["lbl_menu"]!,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.9))),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: SizedBox(
                                            width: getHorizontalSize(107),
                                            child: Divider(
                                                height: getVerticalSize(2),
                                                thickness: getVerticalSize(2),
                                                color: ColorConstant.amber300)))
                                  ])),
                          Padding(
                              padding:
                                  getPadding(left: 50, top: 28, bottom: 15),
                              child: Text(enUs["lbl_info"]!,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium18.copyWith(
                                      letterSpacing: getHorizontalSize(0.9)))),
                          Padding(
                              padding:
                                  getPadding(left: 85, top: 28, bottom: 15),
                              child: Text(enUs["lbl_reviews"]!,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium18.copyWith(
                                      letterSpacing: getHorizontalSize(0.9))))
                        ])),
                //Menu  poplar dishes
                Padding(
                    padding: getPadding(left: 34, top: 32),
                    child: Text(enUs["lbl_menu"]!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold22
                            .copyWith(letterSpacing: getHorizontalSize(1.1)))),
                Padding(
                    padding: getPadding(left: 34, top: 4),
                    child: Text(enUs["lbl_popular_dishes"]!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular12
                            .copyWith(letterSpacing: getHorizontalSize(0.6)))),


// menu images section
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(left: 20, top: 19),
                    child: IntrinsicWidth(
                        child: SizedBox(
                            height: getVerticalSize(198),
                            width: getHorizontalSize(490),
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(right: 51),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle153,
                                                      height:
                                                          getVerticalSize(137),
                                                      width: getHorizontalSize(
                                                          138),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle338,
                                                      height:
                                                          getVerticalSize(137),
                                                      width: getHorizontalSize(
                                                          138),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                      margin:
                                                          getMargin(left: 12)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle337,
                                                      height:
                                                          getVerticalSize(130),
                                                      width: getHorizontalSize(
                                                          138),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                      margin:
                                                          getMargin(left: 12))
                                                ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 6, right: 51),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  112),
                                                          child: Text(
                                                              enUs[
                                                                  "msg_chicken_friend_burger"]!,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold14Black900
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.7)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 37,
                                                              top: 2,
                                                              bottom: 5),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    enUs[
                                                                        "lbl_tuwer_burger"]!,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold14Black900
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.7))),
                                                                Text(
                                                                    enUs[
                                                                        "msg_2_photos_7_reviews"]!,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular10
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.5)))
                                                              ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  117),
                                                          margin: getMargin(
                                                              left: 43,
                                                              bottom: 3),
                                                          child: Text(
                                                              enUs[
                                                                  "msg_chicken_friend_burger"]!,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold14Black900
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.7))))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 1, right: 51),
                                                child: Row(children: [
                                                  Text(
                                                      enUs[
                                                          "msg_2_photos_7_reviews"]!,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular10
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 193),
                                                      child: Text(
                                                          enUs[
                                                              "msg_2_photos_7_reviews"]!,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.5))))
                                                ]))
                                          ])),

                                ])))),

                    //Info sections that move on next page
                View_profile_widget(),
 //location reviews section
                    View_bussines_location_review(),
// Video reviews here
                    Bussines_profile_video_reviews()

              ]))),
      // bottomNavigationBar:
      //     CustomBottomBar(onChanged: (BottomBarEnum type) {})
    ));
  }

  void onTapBackfourteen() {}

  void onTapColumnsearch() {}
}

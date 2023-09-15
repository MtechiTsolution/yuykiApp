import 'package:example/screens/search/Serach_screen_menu/view_bussiness_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../../../widgets/custom_image_view.dart';

class Bussines_Profile extends StatefulWidget {
  //const Bussines_Profile({super.key});

  @override
  State<Bussines_Profile> createState() => _Bussine_ProfileState();
}

class _Bussine_ProfileState extends State<Bussines_Profile> {
  GoogleMapController? _controller;

  final LatLng targetLocation = LatLng(37.7749, -122.4194); // Example location (San Francisco)

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Stack(alignment: Alignment.bottomCenter, children: [
        // Container(
        //   height: getVerticalSize(277),
        //   width: getHorizontalSize(393),
        //   child: GoogleMap(
        //     onMapCreated: (controller) {
        //       setState(() {
        //         _controller = controller;
        //       });
        //     },
        //     initialCameraPosition: CameraPosition(
        //       target: targetLocation,
        //       zoom: 14.0,
        //     ),
        //     markers: {
        //       Marker(
        //         markerId: MarkerId('targetMarker'),
        //         position: targetLocation,
        //         infoWindow: InfoWindow(title: 'Target Location'),
        //       ),
        //     },
        //   ),
        // ),
        CustomImageView(
            onTap: (){
              print("click on image");
              Navigator.push(context, MaterialPageRoute(builder: (context)=> View_bussine_profile()));
            },
            imagePath: ImageConstant.imgFrameAmber30001,
            height: getVerticalSize(277),
            width: getHorizontalSize(393),
            alignment: Alignment.topCenter),
        Align(
            alignment: Alignment.center,
            child: SizedBox(
                height: getVerticalSize(1248),
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: getMargin(right: 5, top: 80),
                            padding: getPadding(
                                left: 21, top: 39, right: 21, bottom: 39),
                            decoration: AppDecoration.gradientWhiteA70000WhiteA700
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL15),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  // Image section
                                  Padding(
                                      padding: getPadding(
                                          left: 4, top: 178, right: 73),
                                      child: InkWell(
                                        onTap: (){
                                          print("click on image");
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> View_bussine_profile()));
                                        },
                                        child: Row(children: [
                                          CustomImageView(

                                              imagePath:
                                                  ImageConstant.imgRectangle138,
                                              height: getSize(175),
                                              width: getSize(175),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 7, top: 27, bottom: 4),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle140,
                                                        height: getSize(51),
                                                        width: getSize(51),
                                                        radius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    5)),
                                                        margin:
                                                            getMargin(left: 1)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle139,
                                                        height: getSize(87),
                                                        width: getSize(87),
                                                        radius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    5)),
                                                        margin: getMargin(top: 6))
                                                  ]))
                                        ]),
                                      )),
                                  // Km section
                                  Padding(
                                      padding: getPadding(
                                          left: 4, top: 20, right: 5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width: getHorizontalSize(185),
                                                child: Text(
                                                    enUs["msg_1_almo_inn_the"]!,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold14Black900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.7)))),
                                            Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 20),
                                                child: Text(enUs["lbl_53km"]!,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular8
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.4))))
                                          ])),
                                  //review section
                                  Padding(
                                      padding: getPadding(left: 4, top: 4),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgGroup179,
                                            height: getVerticalSize(14),
                                            width: getHorizontalSize(94)),
                                        Padding(
                                            padding:
                                                getPadding(left: 9, top: 3),
                                            child: Text(enUs["lbl_19_reviews"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterRegular8
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4))))
                                      ])),
                                  //location section
                                  Padding(
                                      padding: getPadding(left: 6, top: 6),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFrameAmber30024x18,
                                            height: getVerticalSize(12),
                                            width: getHorizontalSize(8)),
                                        Padding(
                                            padding:
                                                getPadding(left: 4, top: 1),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: enUs["lbl_almo"]!,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(8),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                                  TextSpan(
                                                      text: enUs["lbl2"]!,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(8),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                                  TextSpan(
                                                      text: enUs[
                                                          "lbl_open_47_8"]!,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .lightGreenA700,
                                                          fontSize:
                                                              getFontSize(8),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4)))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                                  // outdoor seating
                                  Padding(
                                      padding: getPadding(left: 7, top: 3),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFrameLightGreenA70001,
                                            height: getVerticalSize(8),
                                            width: getHorizontalSize(10),
                                            margin: getMargin(bottom: 1)),
                                        Container(
                                            height: getVerticalSize(10),
                                            width: getHorizontalSize(167),
                                            margin: getMargin(left: 3),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                          enUs[
                                                              "msg_outdoor_seating"]!,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold8
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4)))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClose1,
                                                      height: getSize(8),
                                                      width: getSize(8),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin:
                                                          getMargin(right: 39))
                                                ]))
                                      ])),
                                  // chips hotle,steak houses
                                  Padding(
                                      padding: getPadding(left: 7, top: 7),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(40),
                                            padding: getPadding(
                                                left: 5,
                                                top: 2,
                                                right: 5,
                                                bottom: 2),
                                            decoration: AppDecoration
                                                .txtFillAmber300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder6),
                                            child: Text(enUs["lbl_hotels"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterLight8
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4)))),
                                        Container(
                                            width: getHorizontalSize(67),
                                            margin: getMargin(left: 4),
                                            padding: getPadding(
                                                left: 6,
                                                top: 2,
                                                right: 6,
                                                bottom: 2),
                                            decoration: AppDecoration
                                                .txtFillAmber300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder6),
                                            child: Text(
                                                enUs["lbl_steak_houses"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterLight8
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4))))
                                      ])),

   //2nd
                                  Padding(
                                      padding: getPadding(top: 39, right: 77),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle141,
                                            height: getSize(175),
                                            width: getSize(175),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10))),
                                        Padding(
                                            padding: getPadding(
                                                left: 7, top: 27, bottom: 4),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle143,
                                                      height: getSize(51),
                                                      width: getSize(51),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  5)),
                                                      margin:
                                                          getMargin(left: 1)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle142,
                                                      height: getSize(87),
                                                      width: getSize(87),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  5)),
                                                      margin: getMargin(top: 6))
                                                ]))
                                      ])),
                                  Padding(
                                      padding: getPadding(top: 20, right: 9),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                enUs["msg_2_rach_houes_diner"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold14Black900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.7))),
                                            Padding(
                                                padding: getPadding(
                                                    top: 4, bottom: 3),
                                                child: Text(enUs["lbl_53km"]!,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular8
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.4))))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 10),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgGroup179,
                                            height: getVerticalSize(14),
                                            width: getHorizontalSize(94)),
                                        Padding(
                                            padding: getPadding(
                                                left: 9, top: 3, bottom: 1),
                                            child: Text(enUs["lbl_19_reviews"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterRegular8
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4))))
                                      ])),
                                  Padding(
                                      padding: getPadding(left: 2, top: 6),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFrameAmber30024x18,
                                            height: getVerticalSize(12),
                                            width: getHorizontalSize(8)),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 1, bottom: 1),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: enUs["lbl_almo"]!,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(8),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                                  TextSpan(
                                                      text: enUs["lbl2"]!,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(8),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                                  TextSpan(
                                                      text: enUs[
                                                          "lbl_open_47_8"]!,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .lightGreenA700,
                                                          fontSize:
                                                              getFontSize(8),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4)))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                                  Padding(
                                      padding: getPadding(left: 3, top: 3),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFrameLightGreenA70001,
                                            height: getVerticalSize(8),
                                            width: getHorizontalSize(10),
                                            margin:
                                                getMargin(top: 1, bottom: 1)),
                                        Container(
                                            height: getVerticalSize(10),
                                            width: getHorizontalSize(167),
                                            margin: getMargin(left: 3),
                                            child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                          enUs[
                                                              "msg_outdoor_seating"]!,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold8
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4)))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClose1,
                                                      height: getSize(8),
                                                      width: getSize(8),
                                                      alignment:
                                                          Alignment.centerRight,
                                                      margin:
                                                          getMargin(right: 39))
                                                ]))
                                      ])),
                                  Padding(
                                      padding: getPadding(left: 3, top: 8),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(40),
                                            padding: getPadding(
                                                left: 5,
                                                top: 3,
                                                right: 5,
                                                bottom: 3),
                                            decoration: AppDecoration
                                                .txtFillAmber300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder6),
                                            child: Text(enUs["lbl_hotels"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterLight8
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4)))),
                                        Container(
                                            width: getHorizontalSize(67),
                                            margin: getMargin(left: 4),
                                            padding: getPadding(
                                                left: 6,
                                                top: 3,
                                                right: 6,
                                                bottom: 3),
                                            decoration: AppDecoration
                                                .txtFillAmber300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder6),
                                            child: Text(
                                                enUs["lbl_steak_houses"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterLight8
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4))))
                                      ])),

     //3rd
                                  Padding(
                                      padding: getPadding(top: 42, right: 77),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle141175x175,
                                            height: getSize(175),
                                            width: getSize(175),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10))),
                                        Padding(
                                            padding: getPadding(
                                                left: 7, top: 27, bottom: 4),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle14351x51,
                                                      height: getSize(51),
                                                      width: getSize(51),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  5)),
                                                      margin:
                                                          getMargin(left: 1)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle142,
                                                      height: getSize(87),
                                                      width: getSize(87),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  5)),
                                                      margin: getMargin(top: 6))
                                                ]))
                                      ])),
                                  Padding(
                                      padding: getPadding(top: 20, right: 9),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(enUs["lbl_the_pines"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold14Black900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.7))),
                                            Padding(
                                                padding: getPadding(
                                                    top: 4, bottom: 3),
                                                child: Text(enUs["lbl_53km"]!,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular8
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.4))))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 10),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgGroup179,
                                            height: getVerticalSize(14),
                                            width: getHorizontalSize(94)),
                                        Padding(
                                            padding: getPadding(
                                                left: 9, top: 3, bottom: 1),
                                            child: Text(enUs["lbl_19_reviews"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterRegular8
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4))))
                                      ])),
                                  Padding(
                                      padding: getPadding(left: 2, top: 6),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFrameAmber30024x18,
                                            height: getVerticalSize(12),
                                            width: getHorizontalSize(8)),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 1, bottom: 1),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: enUs["lbl_almo"]!,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(8),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                                  TextSpan(
                                                      text: enUs["lbl2"]!,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(8),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                                  TextSpan(
                                                      text: enUs[
                                                          "lbl_open_47_8"]!,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .lightGreenA700,
                                                          fontSize:
                                                              getFontSize(8),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4)))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                                  Padding(
                                      padding: getPadding(left: 3, top: 3),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFrameLightGreenA70001,
                                            height: getVerticalSize(8),
                                            width: getHorizontalSize(10),
                                            margin:
                                                getMargin(top: 1, bottom: 1)),
                                        Container(
                                            height: getVerticalSize(10),
                                            width: getHorizontalSize(95),
                                            margin: getMargin(left: 3),
                                            child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                          enUs["msg_takeout"]!,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold8
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4)))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClose1,
                                                      height: getSize(8),
                                                      width: getSize(8),
                                                      alignment:
                                                          Alignment.centerRight,
                                                      margin:
                                                          getMargin(right: 40))
                                                ]))
                                      ])),
                                  Padding(
                                      padding: getPadding(left: 3, top: 8),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(40),
                                            padding: getPadding(
                                                left: 5,
                                                top: 3,
                                                right: 5,
                                                bottom: 3),
                                            decoration: AppDecoration
                                                .txtFillAmber300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder6),
                                            child: Text(enUs["lbl_hotels"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterLight8
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4)))),
                                        Container(
                                            width: getHorizontalSize(102),
                                            margin: getMargin(left: 4),
                                            padding: getPadding(
                                                left: 5,
                                                top: 3,
                                                right: 5,
                                                bottom: 3),
                                            decoration: AppDecoration
                                                .txtFillAmber300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder6),
                                            child: Text(
                                                enUs[
                                                    "msg_american_traditional"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterLight8
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4))))
                                      ]))
                                ]))),
                    // Align(
                    //     alignment: Alignment.topCenter,
                    //     child: SizedBox(
                    //         height: getVerticalSize(1247),
                    //         child: Obx(() => ListView.separated(
                    //             padding: getPadding(
                    //                 left: 18, top: 159, bottom: 1035),
                    //             scrollDirection: Axis.horizontal,
                    //             separatorBuilder: (context, index) {
                    //               return SizedBox(
                    //                   height: getVerticalSize(38));
                    //             },
                    //             itemCount: controller
                    //                 .iphone14ProOneModelObj
                    //                 .value
                    //                 .listcomputerItemList
                    //                 .value
                    //                 .length,
                    //             itemBuilder: (context, index) {
                    //               ListcomputerItemModel model =
                    //               controller
                    //                   .iphone14ProOneModelObj
                    //                   .value
                    //                   .listcomputerItemList
                    //                   .value[index];
                    //               return ListcomputerItemWidget(model);
                    //             })))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding:
                                getPadding(left: 17, top: 87, bottom: 1121),
                            child: IntrinsicWidth(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgSliders1,
                                      height: getVerticalSize(23),
                                      width: getHorizontalSize(21),
                                      margin: getMargin(top: 8, bottom: 6)),
                                  Container(
                                      width: getHorizontalSize(76),
                                      margin: getMargin(left: 19),
                                      padding: getPadding(
                                          left: 8,
                                          top: 10,
                                          right: 8,
                                          bottom: 10),
                                      decoration: AppDecoration.fillGray20002
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(enUs["lbl_short"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium14),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgNext1,
                                                height: getSize(11),
                                                width: getSize(11),
                                                margin: getMargin(
                                                    left: 8, top: 3, bottom: 2))
                                          ])),
                                  Container(
                                      width: getHorizontalSize(80),
                                      margin: getMargin(left: 9),
                                      padding: getPadding(
                                          left: 4,
                                          top: 10,
                                          right: 4,
                                          bottom: 10),
                                      decoration: AppDecoration.txtFillGray20002
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtCircleBorder15),
                                      child: Text(enUs["lbl_open_now"]!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14)),
                                  Container(
                                      width: getHorizontalSize(65),
                                      margin: getMargin(left: 7),
                                      padding: getPadding(
                                          left: 6, top: 9, right: 6, bottom: 9),
                                      decoration: AppDecoration.fillGray20002
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 3),
                                                child: Text(enUs["lbl_price"]!,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium14)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgNext1,
                                                height: getSize(11),
                                                width: getSize(11),
                                                margin: getMargin(
                                                    left: 6, top: 4, bottom: 3))
                                          ])),
                                  Container(
                                      width: getHorizontalSize(107),
                                      margin: getMargin(left: 8),
                                      padding: getPadding(
                                          left: 4, top: 9, right: 4, bottom: 9),
                                      decoration: AppDecoration.txtFillGray20002
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtCircleBorder15),
                                      child: Text(enUs["lbl_offers_takeout"]!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14)),
                                  Container(
                                      width: getHorizontalSize(111),
                                      margin: getMargin(left: 8),
                                      padding: getPadding(
                                          left: 5, top: 8, right: 5, bottom: 8),
                                      decoration: AppDecoration.txtFillGray20002
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtCircleBorder15),
                                      child: Text(enUs["lbl_offers_delivery"]!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14))
                                ])))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin:
                                getMargin(left: 20, right: 27, bottom: 1203,top: 15),
                            padding: getPadding(
                                left: 14, top: 10, right: 14, bottom: 10),
                            decoration: AppDecoration.outlineBlack9003f1
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgBack13,
                                      height: getSize(23),
                                      width: getSize(23),
                                      margin: getMargin(top: 2),
                                      onTap: () {
                                        onTapImgBackthirteen();
                                      }),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgFrameBlack90023x23,
                                      height: getSize(23),
                                      width: getSize(23),
                                      margin: getMargin(right: 1, bottom: 2))
                                ]))),

                  ]),
                )))
      ]),
      // bottomNavigationBar:
      // CustomBottomBar(onChanged: (BottomBarEnum type) {})
    ));
  }

  void onTapImgBackthirteen() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> View_bussine_profile()));
  }

  void onTapColumnsearch() {

      print("click on image");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> View_bussine_profile()));
  }
}




//
//
// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> {
//   GoogleMapController? _controller;
//
//   final LatLng targetLocation = LatLng(37.7749, -122.4194); // Example location (San Francisco)
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Map Screen'),
//       ),
//       body:
//       GoogleMap(
//         onMapCreated: (controller) {
//           setState(() {
//             _controller = controller;
//           });
//         },
//         initialCameraPosition: CameraPosition(
//           target: targetLocation,
//           zoom: 14.0,
//         ),
//         markers: {
//           Marker(
//             markerId: MarkerId('targetMarker'),
//             position: targetLocation,
//             infoWindow: InfoWindow(title: 'Target Location'),
//           ),
//         },
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(home: MapScreen()));
// }

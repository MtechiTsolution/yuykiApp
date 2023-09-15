
import 'package:easy_localization/easy_localization.dart';
import 'package:example/screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../theme/app_style.dart';
import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_image_view.dart';


class Sharelocation extends StatefulWidget {
 // const Sharelocation({super.key});

  @override
  State<Sharelocation> createState() => _SharelocationState();
}

class _SharelocationState extends State<Sharelocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 17, bottom: 17),
                child:
                Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: getPadding(top: 81, right: 90),
                          child: Text("Share your location",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold28))),
                  Container(
                      width: getHorizontalSize(333),
                      margin: getMargin(left: 36, top: 13, right: 24),
                      child: Text("To show you experiences near you. we’ll\nneed to know where you are .",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsLight17)),
                  SizedBox(
                      width: double.maxFinite,
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 19),
                          padding: getPadding(
                              left: 2, top: 11, right: 2, bottom: 11),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup117),
                                  fit: BoxFit.cover)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(24),
                                    margin: getMargin(left: 54),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationRedA700,
                                              height: getVerticalSize(40),
                                              width: getHorizontalSize(24),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath:
                                              ImageConstant.imgVector18x18,
                                              height: getSize(18),
                                              width: getSize(18),
                                              alignment: Alignment.topRight,
                                              margin:
                                              getMargin(top: 2, right: 2))
                                        ])),
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector6x29,
                                    height: getVerticalSize(6),
                                    width: getHorizontalSize(29),
                                    margin: getMargin(left: 52)),
                                Padding(
                                    padding: getPadding(top: 17, right: 32),
                                    child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(65),
                                              width: getHorizontalSize(67),
                                              margin: getMargin(top: 171),
                                              child: Stack(
                                                  alignment:
                                                  Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector6x29,
                                                        height:
                                                        getVerticalSize(14),
                                                        width:
                                                        getHorizontalSize(
                                                            67),
                                                        alignment: Alignment
                                                            .bottomCenter),
                                                    Align(
                                                        alignment:
                                                        Alignment.topCenter,
                                                        child: SizedBox(
                                                            height:
                                                            getVerticalSize(
                                                                58),
                                                            width:
                                                            getHorizontalSize(
                                                                34),
                                                            child: Stack(
                                                                alignment:
                                                                Alignment
                                                                    .topCenter,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                      ImageConstant
                                                                          .imgLocationRedA700,
                                                                      height:
                                                                      getVerticalSize(
                                                                          58),
                                                                      width:
                                                                      getHorizontalSize(
                                                                          34),
                                                                      alignment:
                                                                      Alignment
                                                                          .center),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                      ImageConstant
                                                                          .imgVector26x26,
                                                                      height:
                                                                      getSize(
                                                                          26),
                                                                      width: getSize(
                                                                          26),
                                                                      alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                      margin: getMargin(
                                                                          top:
                                                                          3))
                                                                ])))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(182),
                                              width: getHorizontalSize(186),
                                              margin: getMargin(
                                                  left: 38, bottom: 54),
                                              child: Stack(
                                                  alignment:
                                                  Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector6x29,
                                                        height:
                                                        getVerticalSize(40),
                                                        width:
                                                        getHorizontalSize(
                                                            186),
                                                        alignment: Alignment
                                                            .bottomCenter),
                                                    Align(
                                                        alignment:
                                                        Alignment.topCenter,
                                                        child: Container(
                                                            height:
                                                            getVerticalSize(
                                                                161),
                                                            width:
                                                            getHorizontalSize(
                                                                95),
                                                            padding: getPadding(
                                                                left: 10,
                                                                top: 8,
                                                                right: 10,
                                                                bottom: 8),
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: fs.Svg(
                                                                        ImageConstant
                                                                            .imgGroupRedA700),
                                                                    fit: BoxFit
                                                                        .cover)),
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                      ImageConstant
                                                                          .imgVector72x72,
                                                                      height:
                                                                      getSize(
                                                                          72),
                                                                      width:
                                                                      getSize(
                                                                          72),
                                                                      alignment:
                                                                      Alignment
                                                                          .topCenter)
                                                                ])))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 7,
                                                  top: 65,
                                                  bottom: 130),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        height:
                                                        getVerticalSize(38),
                                                        width:
                                                        getHorizontalSize(
                                                            25),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgLocationRedA70038x25,
                                                                  height:
                                                                  getVerticalSize(
                                                                      38),
                                                                  width:
                                                                  getHorizontalSize(
                                                                      25),
                                                                  alignment:
                                                                  Alignment
                                                                      .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgVector19x19,
                                                                  height:
                                                                  getSize(
                                                                      19),
                                                                  width:
                                                                  getSize(
                                                                      19),
                                                                  alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                                  margin:
                                                                  getMargin(
                                                                      top:
                                                                      2))
                                                            ])),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector6x29,
                                                        height:
                                                        getVerticalSize(4),
                                                        width:
                                                        getHorizontalSize(
                                                            19))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 185,
                                                  bottom: 10),
                                              child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        height:
                                                        getVerticalSize(38),
                                                        width:
                                                        getHorizontalSize(
                                                            25),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgLocationRedA70038x25,
                                                                  height:
                                                                  getVerticalSize(
                                                                      38),
                                                                  width:
                                                                  getHorizontalSize(
                                                                      25),
                                                                  alignment:
                                                                  Alignment
                                                                      .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgVector1,
                                                                  height:
                                                                  getSize(
                                                                      19),
                                                                  width:
                                                                  getSize(
                                                                      19),
                                                                  alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                                  margin:
                                                                  getMargin(
                                                                      top:
                                                                      2))
                                                            ])),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector6x29,
                                                        height:
                                                        getVerticalSize(4),
                                                        width:
                                                        getHorizontalSize(
                                                            19),
                                                        margin:
                                                        getMargin(left: 2))
                                                  ]))
                                        ])),
                                Container(
                                    height: getVerticalSize(73),
                                    width: getHorizontalSize(75),
                                    margin: getMargin(
                                        left: 55, top: 46, bottom: 72),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                              ImageConstant.imgVector6x29,
                                              height: getVerticalSize(16),
                                              width: getHorizontalSize(75),
                                              alignment:
                                              Alignment.bottomCenter),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                  height: getVerticalSize(65),
                                                  width: getHorizontalSize(38),
                                                  child: Stack(
                                                      alignment:
                                                      Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLocationRedA700,
                                                            height:
                                                            getVerticalSize(
                                                                65),
                                                            width:
                                                            getHorizontalSize(
                                                                38),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVector29x29,
                                                            height: getSize(29),
                                                            width: getSize(29),
                                                            alignment: Alignment
                                                                .topCenter,
                                                            margin: getMargin(
                                                                top: 3))
                                                      ])))
                                        ]))
                              ])))
                ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(52),
                text: "Share your location",
                margin: getMargin(left: 37, right: 37, bottom: 49),
                shape: ButtonShape.RoundedBorder15,
                padding: ButtonPadding.PaddingAll12,
                fontStyle: ButtonFontStyle.InterBold20,
                onTap: () {
                  onTapShareyour();
                })));
  }

  void onTapShareyour() {

    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}


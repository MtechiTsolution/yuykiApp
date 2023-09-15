import 'package:easy_localization/easy_localization.dart';
import 'package:example/app_export.dart';
import 'package:example/localization/en_us/en_us_translations.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../shareLocation.dart';
class First_Inntro extends StatefulWidget {
 // const First_Inntro({super.key});

  @override
  State<First_Inntro> createState() => _First_InntroState();
}

class _First_InntroState extends State<First_Inntro> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 99),
                              child: Padding(
                                  padding: getPadding(left: 20, right: 13),
                                  child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        // Text(stepTwoTitle),
                                        Text("Enjoy new way with Yuyki",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold28),
                                        Container(
                                            width: getHorizontalSize(285),
                                            margin: getMargin(
                                                left: 44, top: 6, right: 30),
                                            child: Text(
                                                "Video reviews\nsearch local Recommendations",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsLight18)),
                                        Container(
                                            height: getVerticalSize(351),
                                            width: getHorizontalSize(268),
                                            margin: getMargin(top: 61),
                                            child: Stack(
                                                alignment: Alignment
                                                    .bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                      Alignment.center,
                                                      child: Container(
                                                          width:
                                                          getHorizontalSize(
                                                              214),
                                                          margin: getMargin(
                                                              left: 26,
                                                              top: 35,
                                                              right: 28,
                                                              bottom: 37),
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 72,
                                                              right: 5,
                                                              bottom: 72),
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: fs
                                                                      .Svg(
                                                                      ImageConstant
                                                                          .imgGroup1177),
                                                                  fit: BoxFit
                                                                      .cover)),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                    ImageConstant
                                                                        .imgEllipse10,
                                                                    height:
                                                                    getVerticalSize(
                                                                        120),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        118),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                        getHorizontalSize(
                                                                            60)),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                        15)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                    ImageConstant
                                                                        .imgEllipse16,
                                                                    height:
                                                                    getVerticalSize(
                                                                        41),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        42),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                        getHorizontalSize(
                                                                            21)),
                                                                    margin: getMargin(
                                                                        top: 76,
                                                                        bottom:
                                                                        18))
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse20,
                                                      height:
                                                      getVerticalSize(45),
                                                      width:
                                                      getHorizontalSize(44),
                                                      radius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              22)),
                                                      alignment:
                                                      Alignment.bottomLeft,
                                                      margin: getMargin(
                                                          left: 17,
                                                          bottom: 127)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse14,
                                                      height:
                                                      getVerticalSize(81),
                                                      width:
                                                      getHorizontalSize(80),
                                                      radius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              40)),
                                                      alignment:
                                                      Alignment.topLeft,
                                                      margin:
                                                      getMargin(top: 44)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse11,
                                                      height:
                                                      getVerticalSize(66),
                                                      width:
                                                      getHorizontalSize(65),
                                                      radius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              33)),
                                                      alignment:
                                                      Alignment.bottomLeft,
                                                      margin: getMargin(
                                                          left: 25,
                                                          bottom: 37)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse12,
                                                      height:
                                                      getVerticalSize(73),
                                                      width:
                                                      getHorizontalSize(71),
                                                      radius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              36)),
                                                      alignment:
                                                      Alignment.topRight,
                                                      margin:
                                                      getMargin(top: 75)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse13,
                                                      height: getSize(84),
                                                      width: getSize(84),
                                                      radius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              42)),
                                                      alignment:
                                                      Alignment.topRight,
                                                      margin:
                                                      getMargin(right: 75)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse17,
                                                      height:
                                                      getVerticalSize(103),
                                                      width: getHorizontalSize(
                                                          102),
                                                      alignment:
                                                      Alignment.bottomRight,
                                                      margin:
                                                      getMargin(right: 54))
                                                ])),
                                        Container(
                                            height: getVerticalSize(195),
                                            width: getHorizontalSize(346),
                                            margin: getMargin(top: 52),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFolder,
                                                      height:
                                                      getVerticalSize(32),
                                                      width:
                                                      getHorizontalSize(49),
                                                      alignment:
                                                      Alignment.topLeft,
                                                      margin: getMargin(
                                                          left: 7, top: 44)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFolder,
                                                      height:
                                                      getVerticalSize(32),
                                                      width:
                                                      getHorizontalSize(49),
                                                      alignment:
                                                      Alignment.topRight,
                                                      margin:
                                                      getMargin(top: 44)),
                                                  Align(
                                                      alignment:
                                                      Alignment.centerLeft,
                                                      child: SizedBox(
                                                          height:
                                                          getVerticalSize(
                                                              195),
                                                          width:
                                                          getHorizontalSize(
                                                              330),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgFolder,
                                                                    height:
                                                                    getVerticalSize(
                                                                        37),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        56),
                                                                    alignment:
                                                                    Alignment
                                                                        .bottomLeft,
                                                                    margin: getMargin(
                                                                        left:
                                                                        130,
                                                                        bottom:
                                                                        14)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                    ImageConstant
                                                                        .imgGroupBlueGray900,
                                                                    height:
                                                                    getVerticalSize(
                                                                        108),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        46),
                                                                    alignment:
                                                                    Alignment
                                                                        .bottomLeft),
                                                                Align(
                                                                    alignment:
                                                                    Alignment
                                                                        .bottomCenter,
                                                                    child: SizedBox(
                                                                        width: getHorizontalSize(
                                                                            226),
                                                                        child: Divider(
                                                                            height:
                                                                            getVerticalSize(
                                                                                1),
                                                                            thickness: getVerticalSize(
                                                                                1),
                                                                            color: ColorConstant
                                                                                .blueGray900))),
                                                                CustomImageView(
                                                                    svgPath:
                                                                    ImageConstant
                                                                        .imgGroupAmber30084x105,
                                                                    height:
                                                                    getVerticalSize(
                                                                        84),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        105),
                                                                    alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                    margin: getMargin(
                                                                        left:
                                                                        99,
                                                                        top:
                                                                        26)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                    ImageConstant
                                                                        .imgGroupBlueGray90019x125,
                                                                    height:
                                                                    getVerticalSize(
                                                                        19),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        125),
                                                                    alignment:
                                                                    Alignment
                                                                        .bottomLeft,
                                                                    margin: getMargin(
                                                                        left:
                                                                        86,
                                                                        bottom:
                                                                        61)),
                                                                Align(
                                                                    alignment:
                                                                    Alignment
                                                                        .centerRight,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            right: 47),
                                                                        child: Column(
                                                                            mainAxisSize: MainAxisSize
                                                                                .min,
                                                                            crossAxisAlignment: CrossAxisAlignment
                                                                                .start,
                                                                            mainAxisAlignment: MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              CustomImageView(
                                                                                  svgPath: ImageConstant
                                                                                      .imgQuestion,
                                                                                  height: getVerticalSize(
                                                                                      44),
                                                                                  width: getHorizontalSize(
                                                                                      32),
                                                                                  alignment: Alignment
                                                                                      .centerRight),
                                                                              CustomImageView(
                                                                                  svgPath: ImageConstant
                                                                                      .imgGroupBlueGray900110x39,
                                                                                  height: getVerticalSize(
                                                                                      110),
                                                                                  width: getHorizontalSize(
                                                                                      39),
                                                                                  margin: getMargin(
                                                                                      top: 40))
                                                                            ]))),
                                                                Align(
                                                                    alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                    child: Card(
                                                                        clipBehavior:
                                                                        Clip
                                                                            .antiAlias,
                                                                        elevation:
                                                                        0,
                                                                        margin: getMargin(
                                                                            right:
                                                                            103),
                                                                        color: ColorConstant
                                                                            .blueGray900,
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderLR4),
                                                                        child: Container(
                                                                            height: getVerticalSize(
                                                                                42),
                                                                            width: getHorizontalSize(
                                                                                50),
                                                                            padding: getPadding(
                                                                                left: 18,
                                                                                top: 12,
                                                                                right: 18,
                                                                                bottom: 12),
                                                                            decoration: AppDecoration
                                                                                .fillBluegray900
                                                                                .copyWith(
                                                                                borderRadius: BorderRadiusStyle
                                                                                    .customBorderLR4),
                                                                            child: Stack(
                                                                                children: [
                                                                                  CustomImageView(
                                                                                      svgPath: ImageConstant
                                                                                          .imgPlay,
                                                                                      height: getSize(
                                                                                          14),
                                                                                      width: getSize(
                                                                                          14),
                                                                                      alignment: Alignment
                                                                                          .topCenter)
                                                                                ])))),
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgAlarm,
                                                                    height:
                                                                    getVerticalSize(
                                                                        79),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        69),
                                                                    alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                    margin: getMargin(
                                                                        top: 9,
                                                                        right:
                                                                        40)),
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgSignal,
                                                                    height:
                                                                    getVerticalSize(
                                                                        14),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        13),
                                                                    alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                    margin: getMargin(
                                                                        top: 15,
                                                                        right:
                                                                        103)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                    ImageConstant
                                                                        .imgGroupAmber300113x37,
                                                                    height:
                                                                    getVerticalSize(
                                                                        113),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        37),
                                                                    alignment:
                                                                    Alignment
                                                                        .bottomRight),
                                                                CustomButton(
                                                                    height:
                                                                    getVerticalSize(
                                                                        52),
                                                                    width: getHorizontalSize(
                                                                        319),
                                                                    text:
                                                                    "Let’s get started"
                                                                        ,
                                                                    margin: getMargin(
                                                                        bottom:
                                                                        50),
                                                                    shape: ButtonShape
                                                                        .RoundedBorder15,
                                                                    padding:
                                                                    ButtonPadding
                                                                        .PaddingAll12,
                                                                    fontStyle:
                                                                    ButtonFontStyle
                                                                        .InterBold20,
                                                                    onTap: () {
                                                                      onTapLetsget();
                                                                    },
                                                                    alignment:
                                                                    Alignment
                                                                        .bottomCenter)
                                                              ])))
                                                ]))
                                      ]))))
                    ]))));
  }

  void onTapLetsget() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Sharelocation()));

  }
}

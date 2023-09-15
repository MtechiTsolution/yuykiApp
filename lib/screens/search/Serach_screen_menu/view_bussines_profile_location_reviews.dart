import 'package:flutter/material.dart';

import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

class View_bussines_location_review extends StatefulWidget {
  // const View_bussines_location_revioew({super.key});

  @override
  State<View_bussines_location_review> createState() =>
      _View_bussines_location_revioewState();
}

class _View_bussines_location_revioewState
    extends State<View_bussines_location_review> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrameAmber30001,
              height: getVerticalSize(223),
              width: getHorizontalSize(393),
              margin: getMargin(left: 7, top: 4)),
          Padding(
              padding: getPadding(left: 32, top: 18),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgSportscar1,
                    height: getSize(16),
                    width: getSize(16),
                    margin: getMargin(top: 6, bottom: 4)),
                Padding(
                    padding: getPadding(left: 3),
                    child: Text(enUs["lbl_32_min_drive"]!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold22
                            .copyWith(letterSpacing: getHorizontalSize(1.1))))
              ])),
          Padding(
              padding: getPadding(left: 32, top: 18),
              child: Row(children: [
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: enUs["lbl_houes"]!,
                          style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(12),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              letterSpacing: getHorizontalSize(0.6))),
                      TextSpan(
                          text: enUs["msg_14m_sr_8_lahore"]!,
                          style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(12),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              letterSpacing: getHorizontalSize(0.6)))
                    ]),
                    textAlign: TextAlign.left)

              ])),
          Padding(
              padding: getPadding(left: 32, top: 18),
              child: Row(children: [
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: enUs["lbl_houes"]!,
                          style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(12),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              letterSpacing: getHorizontalSize(0.6))),
                      TextSpan(
                          text: enUs["msg_14m_sr_8_lahore"]!,
                          style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(12),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              letterSpacing: getHorizontalSize(0.6)))
                    ]),
                    textAlign: TextAlign.left)

              ])),


          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: getPadding(top: 14, right: 64),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(enUs["lbl_get_directions"]!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold22
                            .copyWith(letterSpacing: getHorizontalSize(1.1))),
                    CustomImageView(
                        imagePath: ImageConstant.imgDirection11,
                        height: getSize(26),
                        width: getSize(26),
                        margin: getMargin(left: 25))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle160,
              height: getVerticalSize(9),
              width: getHorizontalSize(392),
              margin: getMargin(left: 7, top: 20)),
          Container(
              height: getVerticalSize(44),
              width: getHorizontalSize(149),
              margin: getMargin(left: 37, top: 9),
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: getHorizontalSize(149),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: enUs["lbl_amennities"]!,
                                  style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: getFontSize(12),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: getHorizontalSize(0.6))),
                              TextSpan(
                                  text: enUs["msg_many_v_vegatations"]!,
                                  style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: getFontSize(12),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: getHorizontalSize(0.6)))
                            ]),
                            textAlign: TextAlign.left))),
                CustomImageView(
                    imagePath: ImageConstant.imgGroup14345x45,
                    height: getSize(15),
                    width: getSize(15),
                    alignment: Alignment.bottomLeft,
                    margin: getMargin(left: 4))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1609x391,
              height: getVerticalSize(9),
              width: getHorizontalSize(391),
              margin: getMargin(left: 7, top: 39)),
          Container(
              height: getVerticalSize(61),
              width: getHorizontalSize(167),
              margin: getMargin(left: 37, top: 8),
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: getVerticalSize(59),
                        width: getHorizontalSize(167),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: getHorizontalSize(167),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: enUs["lbl_payment"]!,
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                letterSpacing:
                                                    getHorizontalSize(0.6))),
                                        TextSpan(
                                            text: enUs["msg_accepts_creadit"]!,
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w300,
                                                letterSpacing:
                                                    getHorizontalSize(0.6)))
                                      ]),
                                      textAlign: TextAlign.left))),
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup14345x45,
                              height: getSize(15),
                              width: getSize(15),
                              alignment: Alignment.bottomLeft,
                              margin: getMargin(left: 4, bottom: 14))
                        ]))),
                CustomImageView(
                    imagePath: ImageConstant.imgGroup14345x45,
                    height: getSize(15),
                    width: getSize(15),
                    alignment: Alignment.bottomLeft,
                    margin: getMargin(left: 4))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle161,
              height: getVerticalSize(9),
              width: getHorizontalSize(391),
              margin: getMargin(left: 7, top: 29)),

        ],
      ),
    );
  }

  void onTapRowshopping() {}
}

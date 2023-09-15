import 'package:flutter/material.dart';

import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';


class View_profile_widget extends StatefulWidget {
  //const View_profile_widget({super.key});

  @override
  State<View_profile_widget> createState() => _View_profile_widgetState();
}

class _View_profile_widgetState extends State<View_profile_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
      Align(
          alignment: Alignment.center,
          child: Container(
              width: getHorizontalSize(322),
              margin: getMargin(left: 35, top: 18, right: 43),
              padding: getPadding(
                  left: 99, top: 7, right: 99, bottom: 7),
              decoration: AppDecoration.fillBlack900.copyWith(
                  borderRadius:
                      BorderRadiusStyle.roundedBorder10),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(bottom: 2,top:2),
                        child: Text( enUs["lbl_see_full_menu"]!,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold16
                                .copyWith(
                                    letterSpacing:
                                        getHorizontalSize(
                                            0.8))))
                  ]))),

      // Info section
      CustomImageView(
          imagePath: ImageConstant.imgRectangle157,
          height: getVerticalSize(23),
          width: getHorizontalSize(387),
          margin: getMargin(left: 7, top: 25)),
      Padding(
          padding: getPadding(left: 37, top: 10),
          child: Text(enUs["lbl_info"]!,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterBold22.copyWith(
                  letterSpacing: getHorizontalSize(1.1)))),
      Container(
          width: getHorizontalSize(182),
          margin: getMargin(left: 37, top: 3),
          child: RichText(
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
                    text:enUs["msg_open_in_8_min"]!,
                    style: TextStyle(
                        color: ColorConstant.green800,
                        fontSize: getFontSize(12),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        letterSpacing: getHorizontalSize(0.6)))
              ]),
              textAlign: TextAlign.left)),
      Align(
          alignment: Alignment.center,
          child: Padding(
              padding: getPadding(left: 37, top: 29, right: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: getHorizontalSize(111),
                        child: Text(
                            enUs["msg_call_00123456778900"]!,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12
                                .copyWith(
                                    letterSpacing:
                                        getHorizontalSize(
                                            0.6)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgTelephone1,
                        height: getVerticalSize(20),
                        width: getHorizontalSize(21),
                        margin: getMargin(
                            left: 180, top: 5, bottom: 5))
                  ]))),
      CustomImageView(
          imagePath: ImageConstant.imgRectangle158,
          height: getVerticalSize(8),
          width: getHorizontalSize(389),
          margin: getMargin(left: 7, top: 47)),


    ],),);
  }

  void onTapRowshopping() {}
}

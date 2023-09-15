import 'dart:js';

import 'package:easy_localization/easy_localization.dart';
import 'package:example/screens/search/widgets/search1.dart';
import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';

class SearchScreen extends StatefulWidget {
 // const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(

            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        padding: getPadding(top: 1, bottom: 1),
                        decoration: AppDecoration.outlineBlack90035,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: getPadding(
                                      left: 14, top: 2, right: 8),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                top: 4, bottom: 3),
                                            child: Text(
                                                "Current Location",
                                                overflow:
                                                TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium12
                                                    .copyWith(
                                                    letterSpacing:
                                                    getHorizontalSize(
                                                        0.6)))),
                                        CustomImageView(
                                            svgPath:
                                            ImageConstant.imgLocation,
                                            height: getSize(21),
                                            width: getSize(21),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(2)),
                                            margin: getMargin(
                                                left: 3, bottom: 1),
                                            onTap: () {
                                              //onTapImgLocation();
                                            }),
                                        Spacer(),
                                        Padding(
                                            padding: getPadding(top: 5),
                                            child: Text(
                                                "post video reviews",
                                                overflow:
                                                TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style: AppStyle
                                                    .txtInterMedium12
                                                    .copyWith(
                                                    letterSpacing:
                                                    getHorizontalSize(
                                                        0.8))))
                                      ]))
                            ]))),
                      Search1()
                    ])),
        bottomNavigationBar:
        CustomBottomBar(
            onChanged: (BottomBarEnum type) {})));
  }


}



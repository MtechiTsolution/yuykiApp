import 'package:flutter/material.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: getSize(393),
        width: double.maxFinite,
        margin: getMargin(top: 14),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: getVerticalSize(191),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle19,
                        height: getVerticalSize(191),
                        width: getHorizontalSize(393),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: getPadding(left: 29, top: 25),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: getHorizontalSize(161),
                                      child: Text("msg_les_meilleurs_burgers",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBlack24)),
                                  Container(
                                      width: getHorizontalSize(151),
                                      margin: getMargin(top: 13),
                                      padding: getPadding(
                                          left: 20,
                                          top: 5,
                                          right: 20,
                                          bottom: 5),
                                      decoration: AppDecoration
                                          .txtOutlineAmber300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtCircleBorder15),
                                      child: Text("lbl_outdoor_enjoy",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular14))
                                ])))
                  ]))),
        ]));
  }
}

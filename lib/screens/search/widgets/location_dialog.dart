import 'package:example/localization/en_us/en_us_translations.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_search_view.dart';

class Location_dialog extends StatefulWidget {
  //const Location_dialog({super.key});

  @override
  State<Location_dialog> createState() => _Location_dilaogState();
}

class _Location_dilaogState extends State<Location_dialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.amber300,
      body: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 21,
          top: 19,
          right: 21,
          bottom: 19,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgClose,
              height: getVerticalSize(
                28,
              ),
              width: getHorizontalSize(
                29,
              ),
              alignment: Alignment.centerRight,
            ),
            Padding(
              padding: getPadding(
                left: 3,
                top: 68,
              ),
              child: Text(
                enUs["msg_choose_my_location"]!,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold22.copyWith(
                  letterSpacing: getHorizontalSize(
                    1.1,
                  ),
                ),
              ),
            ),
            CustomSearchView(
              focusNode: FocusNode(),
              autofocus: true,
             // controller: controller.searchController,
              hintText: enUs["lbl_search_places"]!,
              margin: getMargin(
                left: 3,
                top: 29,
                right: 4,
              ),
              variant: SearchViewVariant.OutlineBlack9003f_1,
              shape: SearchViewShape.RoundedBorder12,
              fontStyle: SearchViewFontStyle.InterLight18,
              prefix: Container(
                margin: getMargin(
                  left: 7,
                  top: 8,
                  right: 22,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.amber300,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgSearchAmber300,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: getVerticalSize(
                  41,
                ),
              ),
              suffix: Padding(
                padding: EdgeInsets.only(
                  right: getHorizontalSize(
                    15,
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                   // controller.searchController.clear();
                  },
                  icon: Icon(
                    Icons.clear,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 3,
                top: 33,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgFrameBlack90023x16,
                    height: getVerticalSize(
                      23,
                    ),
                    width: getHorizontalSize(
                      16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      bottom: 2,
                    ),
                    child: Text(
                      enUs["msg_current_location2"]!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.7,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  bottom: 272,
                ),
                child: Text(
                  enUs["msg_no_recent_search"]!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium18Black900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.9,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

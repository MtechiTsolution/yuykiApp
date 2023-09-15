import 'package:example/localization/en_us/en_us_translations.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';

class ImageGallery extends StatefulWidget {
  //const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
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
              SizedBox(
                width: double.maxFinite,
                child: Container(
                  width: double.maxFinite,
                  padding: getPadding(
                    left: 30,
                    top: 12,
                    right: 30,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.outlineBlack90035,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 20,
                        ),
                        child: Text(
                          enUs["lbl_cancal"]!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium18.copyWith(
                            letterSpacing: getHorizontalSize(
                              1.8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgMail,
                height: getVerticalSize(
                  75,
                ),
                width: getHorizontalSize(
                  82,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Text(
                  enUs["msg_no_access_to_photo"]!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold20.copyWith(
                    letterSpacing: getHorizontalSize(
                      2.0,
                    ),
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  312,
                ),
                margin: getMargin(
                  left: 40,
                  top: 8,
                  right: 41,
                ),
                child: Text(
                  enUs["msg_allow_yuki_access"]!,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtInterLight16.copyWith(
                    letterSpacing: getHorizontalSize(
                      1.6,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  46,
                ),
                text: enUs["lbl_enable_access"]!,
                margin: getMargin(
                  left: 16,
                  top: 181,
                  right: 13,
                ),
                variant: ButtonVariant.FillAmber300,
                shape: ButtonShape.RoundedBorder15,
                padding: ButtonPadding.PaddingAll12,
                fontStyle: ButtonFontStyle.InterMedium18,
              ),
              CustomButton(
                height: getVerticalSize(
                  46,
                ),
                text: enUs["msg_take_photo_or_video"]!,
                margin: getMargin(
                  left: 16,
                  top: 16,
                  right: 13,
                  bottom: 26,
                ),
                variant: ButtonVariant.FillBluegray100,
                shape: ButtonShape.RoundedBorder15,
                padding: ButtonPadding.PaddingAll12,
                fontStyle: ButtonFontStyle.InterMedium17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

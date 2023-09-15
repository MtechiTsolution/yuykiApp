import 'package:example/app_export.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

import 'package:flutter/material.dart';

class Gridgroup261ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double containerWidth = screenWidth > 600 ? 200 : 120;
    double iconButtonSize = screenWidth > 600 ? 65 : 47;
    double textFontSize = screenWidth > 600 ? 16 : 14;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildContainer(iconButtonSize, containerWidth, " Shopping ", context),
            SizedBox(height: 5),
            buildContainer(iconButtonSize, containerWidth, "Restaurant", context),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildContainer(iconButtonSize, containerWidth, " Plumber ", context),
            SizedBox(height: 5),
            buildContainer(iconButtonSize, containerWidth, " Carwash ", context),
          ],
        ),
      ],
    );
  }

  Widget buildContainer(
      double iconButtonSize, double containerWidth, String label, BuildContext context) {
    return Container(
      width: containerWidth,
      margin: getMargin(left: 5, top: 5, bottom: 5, right: 5),
      padding: getPadding(left: 10, top: 5, right: 10, bottom: 15),
      decoration: AppDecoration.fillAmber300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        children: [
          CustomIconButton(
            height: iconButtonSize,
            width: iconButtonSize,
            margin: getMargin(top: 8),
            variant: IconButtonVariant.OutlineAmber300,
            shape: IconButtonShape.CircleBorder23,
            padding: IconButtonPadding.PaddingAll10,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup144,
            ),
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

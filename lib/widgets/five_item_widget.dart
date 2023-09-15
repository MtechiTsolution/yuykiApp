
import 'package:example/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/five_item_model.dart';
import '../models/five_model.dart';
import '../theme/app_decoration.dart';
import '../utils/color_constant.dart';
import '../utils/size_utils.dart';


// ignore: must_be_immutable
class FiveItemWidget extends StatelessWidget {
  FiveItemWidget(
    this.fiveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiveItemModel fiveItemModelObj;

  var controller = Get.find<FiveController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(

        margin: getMargin(
          right: 35,
        ),
        padding: getPadding(
          left: 15,
          top: 7,
          right: 15,
          bottom: 7,
        ),
        decoration: AppDecoration.fillBluegray100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: getHorizontalSize(
                130,
              ),
              margin: getMargin(
                left: 1,
                top: 10,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Votes all time\n\n".tr,
                      style: TextStyle(
                        color: ColorConstant.gray800,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        letterSpacing: getHorizontalSize(
                          1.4,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "0".tr,
                      style: TextStyle(
                        color: ColorConstant.gray800,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        letterSpacing: getHorizontalSize(
                          1.4,
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class FiveController extends GetxController {FiveController(this.fiveModelObj);

Rx<FiveModel> fiveModelObj;

}
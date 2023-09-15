import 'package:flutter/material.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/size_utils.dart';
import '../custom_image_view.dart';

// ignore: must_be_immutable
class AppbarSubtitle1 extends StatelessWidget {
  AppbarSubtitle1({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: getSize(
            30,
          ),
          padding: getPadding(
            left: 5,
            top: 5,
            right: 5,
            bottom: 5,
          ),
          decoration: AppDecoration.txtOutlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder11,
          ),
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular18.copyWith(
              color: ColorConstant.black900,
            ),
          ),
        ),
      ),
    );
  }
}

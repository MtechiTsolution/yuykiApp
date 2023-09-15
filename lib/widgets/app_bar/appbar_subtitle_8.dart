import 'package:flutter/material.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/size_utils.dart';
import '../custom_image_view.dart';

// ignore: must_be_immutable
class AppbarSubtitle8 extends StatelessWidget {
  AppbarSubtitle8({
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
        child: Text(

          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsBold14.copyWith(
            letterSpacing: getHorizontalSize(
              0.5,
            ),
            //fontSize: 13,
            color: ColorConstant.black900,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../utils/size_utils.dart';
import '../custom_image_view.dart';


// ignore: must_be_immutable
class AppbarCircleimage1 extends StatelessWidget {
  AppbarCircleimage1({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder18,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(
            34,
          ),
          width: getSize(
            34,
          ),
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(
              17,
            ),
          ),
        ),
      ),
    );
  }
}

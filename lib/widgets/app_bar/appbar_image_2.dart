import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../utils/size_utils.dart';
import '../custom_image_view.dart';


// ignore: must_be_immutable
class AppbarImage2 extends StatelessWidget {
  AppbarImage2({
    Key? key,
    required this.height,
    required this.width,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  double height;

  double width;

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder1,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: height,
          width: width,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(
              1,
            ),
          ),
        ),
      ),
    );
  }
}

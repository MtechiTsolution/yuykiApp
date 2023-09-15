import 'package:flutter/material.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/size_utils.dart';
import '../custom_image_view.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.leadingOnTap,
    this.title,
    this.centerTitle,
    this.actions,
    this.actionOnTap,
  }) : super(key: key);

  final double height;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final VoidCallback? leadingOnTap;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final VoidCallback? actionOnTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leadingOnTap != null
          ? InkWell(
        onTap: leadingOnTap,
        child: leading,
      )
          : leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions?.map((action) {
        return actionOnTap != null
            ? InkWell(
          onTap: actionOnTap,
          child: action,
        )
            : action;
      })?.toList(),
    );
  }

  @override
  Size get preferredSize => Size(
    size.width,
    height,
  );

  _getStyle() {
    switch (styleType) {
      case Style.bgFillTeal50:
        return Container(
          height: getVerticalSize(
            91,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.teal50,
          ),
        );
      case Style.bgShadowBlack90035:
        return Container(
          height: getVerticalSize(
            100,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray200,
            boxShadow: [
              BoxShadow(
                color: ColorConstant.black90035,
                spreadRadius: getHorizontalSize(
                  2,
                ),
                blurRadius: getHorizontalSize(
                  2,
                ),
                offset: Offset(
                  0,
                  2,
                ),
              ),
            ],
          ),
        );
      case Style.bgFillAmber300:
        return Container(
          height: getVerticalSize(
            57,
          ),
          width: getHorizontalSize(
            343,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.amber300,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                13,
              ),
            ),
          ),
        );
      case Style.bgFillGray20002:
        return Container(
          height: getVerticalSize(
            109,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray20002,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFillTeal50,
  bgShadowBlack90035,
  bgFillAmber300,
  bgFillGray20002,
}

import 'package:flutter/material.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/size_utils.dart';


class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case IconButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case IconButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      case IconButtonPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      default:
        return getPadding(
          all: 7,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack90099:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineOrange300:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillWhiteA700c1:
        return ColorConstant.whiteA700C1;
      case IconButtonVariant.OutlineAmber300:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillWhiteA7007e:
        return ColorConstant.whiteA7007e;
      case IconButtonVariant.FillAmber300:
        return ColorConstant.amber300;
      case IconButtonVariant.OutlineGray20002:
        return ColorConstant.gray20002;
      case IconButtonVariant.OutlineAmber300_1:
        return null;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGray20002:
        return Border.all(
          color: ColorConstant.gray20002,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineAmber300_1:
        return Border.all(
          color: ColorConstant.amber300,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case IconButtonVariant.OutlineBlack90099:
      case IconButtonVariant.OutlineOrange300:
      case IconButtonVariant.FillWhiteA700c1:
      case IconButtonVariant.OutlineAmber300:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillWhiteA7007e:
      case IconButtonVariant.FillAmber300:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder23:
        return BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        );
      case IconButtonShape.CircleBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      case IconButtonShape.RoundedBorder11:
        return BorderRadius.circular(
          getHorizontalSize(
            11.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack90099:
        return [
          BoxShadow(
            color: ColorConstant.black90099,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ];
      case IconButtonVariant.OutlineOrange300:
        return [
          BoxShadow(
            color: ColorConstant.orange300,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ];
      case IconButtonVariant.OutlineAmber300:
        return [
          BoxShadow(
            color: ColorConstant.amber300,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ];
      case IconButtonVariant.OutlineGray20002:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ];
      case IconButtonVariant.FillWhiteA700c1:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillWhiteA7007e:
      case IconButtonVariant.FillAmber300:
      case IconButtonVariant.OutlineAmber300_1:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder23,
  CircleBorder16,
  CircleBorder29,
  RoundedBorder11,
}
enum IconButtonPadding {
  PaddingAll10,
  PaddingAll13,
  PaddingAll7,
  PaddingAll4,
  PaddingAll17,
}
enum IconButtonVariant {
  OutlineBlack90099,
  OutlineOrange300,
  FillWhiteA700c1,
  OutlineAmber300,
  FillWhiteA700,
  FillWhiteA7007e,
  FillAmber300,
  OutlineGray20002,
  OutlineAmber300_1,
}

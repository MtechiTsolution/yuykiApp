import 'package:flutter/material.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/size_utils.dart';



class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll12:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingAll9:
        return getPadding(
          all: 5,
        );
      case ButtonPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      case ButtonPadding.PaddingT32:
        return getPadding(
          left: 30,
          top: 30,
          right: 32,
          bottom: 32,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillAmber300:
        return ColorConstant.amber300;
      case ButtonVariant.FillBluegray100:
        return ColorConstant.blueGray100;
      case ButtonVariant.OutlineBlack90028:
        return ColorConstant.gray20003;
      case ButtonVariant.FillBlack90072:
        return ColorConstant.black90072;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillYellow10001:
        return ColorConstant.yellow10001;
      case ButtonVariant.OutlineBlack90028_1:
        return ColorConstant.amber300;
      case ButtonVariant.FillBluegray10002:
        return ColorConstant.blueGray10002;
      case ButtonVariant.OutlineAmber300:
        return null;
      default:
        return ColorConstant.black900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineAmber300:
        return BorderSide(
          color: ColorConstant.amber300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillBlack900:
      case ButtonVariant.FillAmber300:
      case ButtonVariant.FillBluegray100:
      case ButtonVariant.OutlineBlack90028:
      case ButtonVariant.FillBlack90072:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillYellow10001:
      case ButtonVariant.OutlineBlack90028_1:
      case ButtonVariant.FillBluegray10002:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90028:
        return ColorConstant.black90028;
      case ButtonVariant.OutlineBlack90028_1:
        return ColorConstant.black90028;
      case ButtonVariant.FillBlack900:
      case ButtonVariant.FillAmber300:
      case ButtonVariant.FillBluegray100:
      case ButtonVariant.OutlineAmber300:
      case ButtonVariant.FillBlack90072:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillYellow10001:
      case ButtonVariant.FillBluegray10002:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case ButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case ButtonShape.CustomBorderBL5:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              5.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              5.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterSemiBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.InterBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterBold14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsRegular18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterRegular28:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            28,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterRegular24:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterMedium18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium17:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterBold16:
        return TextStyle(
          color: ColorConstant.amberA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsBold18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsBold12:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsBold6:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            6,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterExtraBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.InterExtraBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.PoppinsMedium18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterBold18Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterMedium3:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            3,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium18WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsLight12:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        );
      case ButtonFontStyle.InterRegular18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
  RoundedBorder15,
  RoundedBorder5,
  CustomBorderBL5,
}
enum ButtonPadding {
  PaddingAll6,
  PaddingAll12,
  PaddingAll9,
  PaddingAll17,
  PaddingT32,
}
enum ButtonVariant {
  FillBlack900,
  FillAmber300,
  FillBluegray100,
  OutlineBlack90028,
  OutlineAmber300,
  FillBlack90072,
  FillWhiteA700,
  FillYellow10001,
  OutlineBlack90028_1,
  FillBluegray10002,
}
enum ButtonFontStyle {
  InterSemiBold20,
  InterBold20,
  InterBold18,
  InterBold14,
  PoppinsRegular18,
  InterRegular28,
  InterRegular24,
  InterMedium18,
  InterMedium17,
  InterMedium16,
  InterMedium16Black900,
  InterMedium14,
  InterMedium18WhiteA700,
  InterBold16,
  PoppinsBold16,
  PoppinsBold18,
  PoppinsBold12,
  PoppinsBold6,
  InterBold12,
  InterExtraBold18,
  InterExtraBold20,
  PoppinsMedium18,
  InterBold18Black900,
  InterMedium3,
  PoppinsMedium18WhiteA700,
  PoppinsLight12,
  InterRegular18,
}

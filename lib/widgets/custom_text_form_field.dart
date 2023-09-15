import 'package:flutter/material.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/size_utils.dart';


class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.InterBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.PoppinsRegular18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.InterBold16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.PoppinsLight12:
        return TextStyle(
          color: ColorConstant.gray50001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        );
      case TextFormFieldFontStyle.PoppinsMedium10:
        return TextStyle(
          color: ColorConstant.gray70087,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.InterLight13:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        );
      case TextFormFieldFontStyle.InterLight16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        );
      case TextFormFieldFontStyle.PoppinsLight8:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            8,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        );
      case TextFormFieldFontStyle.PoppinsLight12Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillBlack900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineBlack9003f:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.UnderLineAmber300:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.amber300,
          ),
        );
      case TextFormFieldVariant.FillBluegray100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineBlack90030:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray60087:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray60087,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillGray20005:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.amber300,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillBlack900:
        return ColorConstant.black900;
      case TextFormFieldVariant.OutlineBlack9003f:
        return ColorConstant.gray100;
      case TextFormFieldVariant.FillBluegray100:
        return ColorConstant.blueGray100;
      case TextFormFieldVariant.OutlineBlack90030:
        return ColorConstant.blueGray100;
      case TextFormFieldVariant.FillGray20005:
        return ColorConstant.gray20005;
      case TextFormFieldVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillBlack900:
        return true;
      case TextFormFieldVariant.OutlineBlack9003f:
        return true;
      case TextFormFieldVariant.UnderLineAmber300:
        return false;
      case TextFormFieldVariant.FillBluegray100:
        return true;
      case TextFormFieldVariant.OutlineBlack90030:
        return true;
      case TextFormFieldVariant.OutlineGray60087:
        return false;
      case TextFormFieldVariant.FillGray20005:
        return true;
      case TextFormFieldVariant.FillWhiteA700:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT11:
        return getPadding(
          top: 11,
          right: 11,
          bottom: 11,
        );
      case TextFormFieldPadding.PaddingT3:
        return getPadding(
          top: 3,
          right: 3,
          bottom: 3,
        );
      case TextFormFieldPadding.PaddingT20:
        return getPadding(
          left: 15,
          top: 20,
          right: 15,
          bottom: 20,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder5,
  RoundedBorder10,
}
enum TextFormFieldPadding {
  PaddingT11,
  PaddingAll9,
  PaddingT3,
  PaddingT20,
}
enum TextFormFieldVariant {
  None,
  OutlineAmber300,
  FillBlack900,
  OutlineBlack9003f,
  UnderLineAmber300,
  FillBluegray100,
  OutlineBlack90030,
  OutlineGray60087,
  FillGray20005,
  FillWhiteA700,
}
enum TextFormFieldFontStyle {
  PoppinsLight14,
  InterBold18,
  PoppinsRegular18,
  InterBold16,
  PoppinsLight12,
  PoppinsMedium10,
  InterLight13,
  InterLight16,
  PoppinsLight8,
  PoppinsLight12Black900,
}

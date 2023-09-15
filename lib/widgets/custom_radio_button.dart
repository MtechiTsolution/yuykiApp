import 'package:flutter/material.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/size_utils.dart';



class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.padding,
      this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onChange,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text,
      this.width,
      this.margin});

  RadioPadding? padding;

  RadioShape? shape;

  RadioVariant? variant;

  RadioFontStyle? fontStyle;

  Alignment? alignment;

  Function(String)? onChange;

  bool? isRightCheck;

  double? iconSize;

  String? value;

  String? groupValue;

  String? text;

  double? width;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildRadioButtonWidget(),
          )
        : _buildRadioButtonWidget();
  }

  _buildRadioButtonWidget() {
    return InkWell(
      onTap: () {
        onChange!(value!);
      },
      child: Container(
        width: width,
        margin: margin ?? EdgeInsets.zero,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: isRightCheck! ? getRightSideRadio() : getLeftSideRadio(),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  Widget getRightSideRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getRadioWidget(),
      ],
    );
  }

  Widget getLeftSideRadio() {
    return Row(
      children: [
        getRadioWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getRadioWidget() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Radio<String>(
        value: value ?? "",
        groupValue: groupValue,
        activeColor: ColorConstant.amber300,
        onChanged: (value) {
          onChange!(value!);
        },
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case RadioFontStyle.InterBold16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case RadioFontStyle.InterMedium14:
        return TextStyle(
          color: ColorConstant.blue80002,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case RadioFontStyle.PoppinsLight6:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            6,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        );
      case RadioFontStyle.PoppinsMedium8:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            8,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
    }
  }

  _setPadding() {
    switch (padding) {
      case RadioPadding.PaddingT16:
        return getPadding(
          left: 7,
          top: 16,
          right: 16,
          bottom: 16,
        );
      case RadioPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case RadioVariant.OutlineAmber300:
        return Border.all(
          color: ColorConstant.amber300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case RadioShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      default:
        return null;
    }
  }
}

enum RadioPadding {
  PaddingT16,
  PaddingAll9,
}
enum RadioShape {
  RoundedBorder5,
}
enum RadioVariant {
  OutlineAmber300,
}
enum RadioFontStyle {
  InterBold12,
  InterBold16,
  InterMedium14,
  PoppinsLight6,
  PoppinsMedium8,
}

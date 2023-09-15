import 'package:example/localization/en_us/en_us_translations.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/app_bar/appbar_circleimage_1.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_image_2.dart';
import '../../../widgets/app_bar/appbar_subtitle_7.dart';
import '../../../widgets/app_bar/appbar_subtitle_8.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';

class Message extends StatefulWidget {
 // const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(80),
                leadingWidth: 37,
                leading: AppbarImage(
                    height: getSize(23),
                    width: getSize(23),
                    imagePath: ImageConstant.imgBack13,
                    margin: getMargin(left: 14, top: 10, bottom: 28),
                    onTap: () {
                      onTapBack();
                    }),
                title: Padding(
                    padding: getPadding(left: 14),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      AppbarCircleimage1(
                          imagePath: ImageConstant.imgEllipse8634x34,
                          margin: getMargin(bottom: 10)),
                      Padding(
                          padding: getPadding(left: 10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppbarSubtitle8(
                                    text: enUs[ "lbl_sofia_c"]!,
                                    margin: getMargin(right: 10)),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,

                                        children: [
                                      AppbarImage(
                                          height: getSize(11),
                                          width: getSize(11),
                                          imagePath: ImageConstant.imgUser21,
                                          margin: getMargin(top: 4, bottom: 5)),
                                      AppbarSubtitle7(
                                          text: enUs["lbl_5"]!,
                                          margin: getMargin(left: 2)),

                                    ]))
                              ]))
                    ])),
                actions: [

                  AppbarImage(
                      height: getVerticalSize(5),
                      width: getHorizontalSize(21),
                      svgPath: ImageConstant.imgGroup286,
                      margin:
                      getMargin(left: 71, top: 10, right: 26, bottom: 19))
                ],
                styleType: Style.bgFillGray20002),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 13, top: 6, right: 13, bottom: 6),
                          decoration: AppDecoration.fillYellow100,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                    padding:
                                    getPadding(left: 18, top: 4, bottom: 2),
                                    child: Text(enUs["lbl_garbage_removel"]!,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium12
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(0.6)))),
                                Padding(
                                    padding: getPadding(top: 6),
                                    child: Text(enUs["lbl_see_details"]!,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium12Lightblue900
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(0.6))))
                              ])),
                      Spacer(),
                      Text(enUs["msg_you_can_reply_by"]!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular10
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      Container(
                          height: getVerticalSize(71),
                          width: getHorizontalSize(232),
                          margin: getMargin(top: 28),
                          child:
                          Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(left: 36, right: 37),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCalendar1,
                                                    height: getSize(24),
                                                    width: getSize(24)),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 6, bottom: 2),
                                                    child: Text(
                                                        enUs["msg_when_are_you_available"
                                                            ]!,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular10
                                                            .copyWith(
                                                            letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))))
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  top: 26, right: 10),
                                              child: Text(
                                                  enUs["msg_confirm_appointment"]!,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular10
                                                      .copyWith(
                                                      letterSpacing:
                                                      getHorizontalSize(
                                                          0.5))))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 32),
                                    child: SizedBox(
                                        width: getHorizontalSize(232),
                                        child: Divider(
                                            height: getVerticalSize(2),
                                            thickness: getVerticalSize(2),
                                            color: ColorConstant.amber300)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgAlarmclock1,
                                height: getSize(26),
                                width: getSize(26),
                                alignment: Alignment.bottomLeft,
                                margin: getMargin(left: 36))
                          ])),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 59),
                              padding: getPadding(top: 18, bottom: 18),
                              decoration: AppDecoration.fillGray20002,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text(enUs["msg_where_you_hired"]!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold12
                                                .copyWith(
                                                letterSpacing:
                                                getHorizontalSize(
                                                    0.6)))),
                                    Padding(
                                        padding: getPadding(top: 4),
                                        child: Text(enUs["msg_get_better_leads"]!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular10
                                                .copyWith(
                                                letterSpacing:
                                                getHorizontalSize(
                                                    0.5)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 53, top: 19, right: 54),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(85),
                                                  padding: getPadding(
                                                      left: 28,
                                                      top: 4,
                                                      right: 28,
                                                      bottom: 4),
                                                  decoration: AppDecoration
                                                      .txtFillBlack900
                                                      .copyWith(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder11),
                                                  child: Text(enUs["lbl_yes"]!,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold14WhiteA700
                                                          .copyWith(
                                                          letterSpacing:
                                                          getHorizontalSize(
                                                              0.7)))),
                                              Container(
                                                  width: getHorizontalSize(85),
                                                  margin: getMargin(left: 15),
                                                  padding: getPadding(
                                                      left: 28,
                                                      top: 4,
                                                      right: 28,
                                                      bottom: 4),
                                                  decoration: AppDecoration
                                                      .txtFillBlack900
                                                      .copyWith(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder11),
                                                  child: Text(enUs["lbl_no"]!,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold14WhiteA700
                                                          .copyWith(
                                                          letterSpacing:
                                                          getHorizontalSize(
                                                              0.7)))),
                                              Container(
                                                  width: getHorizontalSize(85),
                                                  margin: getMargin(left: 16),
                                                  padding: getPadding(
                                                      left: 14,
                                                      top: 4,
                                                      right: 14,
                                                      bottom: 4),
                                                  decoration: AppDecoration
                                                      .txtFillBlack900
                                                      .copyWith(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder11),
                                                  child: Text(enUs["lbl_not_yet"]!,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold14WhiteA700
                                                          .copyWith(
                                                          letterSpacing:
                                                          getHorizontalSize(
                                                              0.7))))
                                            ])),
                                    Container(
                                        height: getVerticalSize(10),
                                        width: double.maxFinite,
                                        margin: getMargin(top: 22),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300)),
                                    Padding(
                                        padding: getPadding(
                                            left: 14, top: 14, right: 23),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              CustomIconButton(
                                                  height: 23,
                                                  width: 23,
                                                  margin: getMargin(
                                                      top: 9, bottom: 8),
                                                  variant: IconButtonVariant
                                                      .OutlineAmber300_1,
                                                  shape: IconButtonShape
                                                      .RoundedBorder11,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlusAmber300)),
                                              Expanded(
                                                  child: CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      autofocus: true,
                                                     // controller: controller
                                                        //  .responseController,
                                                      hintText:
                                                      enUs[ "msg_write_a_response"
                                                          ]!,
                                                      margin:
                                                      getMargin(left: 13),
                                                      variant:
                                                      TextFormFieldVariant
                                                          .OutlineBlack90030,
                                                      fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsLight12,
                                                      textInputAction:
                                                      TextInputAction
                                                          .done)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFrameAmber30036x36,
                                                  height: getSize(36),
                                                  width: getSize(36),
                                                  margin: getMargin(
                                                      left: 4,
                                                      top: 2,
                                                      bottom: 1))
                                            ]))
                                  ])))
                    ]))));
  }

  void onTapBack() {
    Navigator.pop(context);
  }
}

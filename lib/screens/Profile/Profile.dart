import 'package:example/app_export.dart';
import 'package:example/localization/en_us/en_us_translations.dart';
import 'package:example/screens/Profile/widgets/imageview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../models/five_item_model.dart';
import '../../models/five_model.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/five_item_widget.dart';
class Profile extends StatefulWidget {
//  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

FiveController controller = Get.put(FiveController(FiveModel().obs));

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(80),
                centerTitle: true,
                title: Container(
                    padding: getPadding(
                        left: 20, top: 0, right: 20, bottom: 50),
                    decoration: AppDecoration.outlineBlack90035,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppbarImage(
                              height: getVerticalSize(28),
                              width: getHorizontalSize(58),
                              svgPath: ImageConstant.imgFrameBlack90002,
                              margin: getMargin(left: 10, top: 73)),
                          AppbarImage(
                            height: getSize(28),
                            width: getSize(28),
                            imagePath: ImageConstant.imgBell21,
                            margin: getMargin(left: 204, top: 73),
                            onTap: () {
                              _showTopHalfDialog(context);
                            },
                          ),

                          AppbarImage(
                              height: getSize(25),
                              width: getSize(25),
                              imagePath: ImageConstant.imgShare,
                              margin: getMargin(left: 26, top: 73, bottom: 3))
                        ])),
                styleType: Style.bgShadowBlack90035),
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(top: 38),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: ColorConstant.amber300,
                                    width: getHorizontalSize(1)),
                                borderRadius: BorderRadiusStyle
                                    .roundedBorder67),
                            child: Container(
                                height: getSize(135),
                                width: getSize(135),
                                padding: getPadding(
                                    left: 34, top: 40, right: 34, bottom: 40),
                                decoration: AppDecoration.outlineAmber300
                                    .copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder67),
                                child: Stack(children: [
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant.imgFrameAmber30054x66,
                                      height: getVerticalSize(54),
                                      width: getHorizontalSize(66),
                                      alignment: Alignment.center)
                                ]))),
                        Padding(
                            padding: getPadding(top: 2),
                            child: Text("Mujahid ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold32.copyWith(
                                    letterSpacing: getHorizontalSize(3.2)))),
                        Padding(
                            padding: getPadding(top: 4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgUser21,
                                      height: getSize(18),
                                      width: getSize(18),
                                      margin: getMargin(top: 1, bottom: 1)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage21,
                                      height: getSize(20),
                                      width: getSize(20),
                                      margin: getMargin(left: 26)),
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant.imgFrameBlack90017x17,
                                      height: getSize(17),
                                      width: getSize(17),
                                      margin:
                                      getMargin(left: 25, top: 1, bottom: 2))
                                ])),
                        Padding(
                            padding: getPadding(left: 37, top: 27, right: 18),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                ImageConstant.imgFloatingicon,
                                                height: getSize(59),
                                                width: getSize(59),
                                                alignment: Alignment
                                                    .centerRight,
                                                onTap: () {
                                                  onTapImgFloatingicon();
                                                }),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 12),
                                                    child: Text(
                                                        "Add Review",
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                        textAlign: TextAlign
                                                            .left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium10
                                                            .copyWith(
                                                            letterSpacing:
                                                            getHorizontalSize(
                                                                0.5)))))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 29, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: 59,
                                                width: 59,
                                                variant: IconButtonVariant
                                                    .OutlineGray20002,
                                                shape: IconButtonShape
                                                    .CircleBorder29,
                                                padding: IconButtonPadding
                                                    .PaddingAll17,
                                                alignment: Alignment.center,
                                                onTap: () {
                                                  onTapBtnGroup104();
                                                },
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup104)),
                                            Align(
                                                alignment: Alignment
                                                    .centerRight,
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 12),
                                                    child: Text(
                                                        "Add photo",
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                        textAlign: TextAlign
                                                            .left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium10
                                                            .copyWith(
                                                            letterSpacing:
                                                            getHorizontalSize(
                                                                0.5)))))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 28, top: 1),
                                      child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: 59,
                                                width: 59,
                                                variant: IconButtonVariant
                                                    .OutlineGray20002,
                                                shape: IconButtonShape
                                                    .CircleBorder29,
                                                padding: IconButtonPadding
                                                    .PaddingAll17,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFrameAmber30059x59)),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text("Check-Ins",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium10
                                                        .copyWith(
                                                        letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                          ])),
                                  GestureDetector(
                                    onTap: () {
                                      _showAddBusinessDialog(); // Call the function to show the dialog
                                    },
                                    child: Padding(
                                      padding: getPadding(left: 25),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
                                          CustomIconButton(
                                            height: 59,
                                            width: 59,
                                            margin: getMargin(left: 4),
                                            variant: IconButtonVariant
                                                .OutlineGray20002,
                                            shape: IconButtonShape
                                                .CircleBorder29,
                                            padding: IconButtonPadding
                                                .PaddingAll17,
                                            child: CustomImageView(
                                                svgPath: ImageConstant.imgMap),
                                          ),
                                          Padding(
                                            padding: getPadding(top: 13),
                                            child: Text(
                                              "Add Business",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsMedium10
                                                  .copyWith(
                                                letterSpacing: getHorizontalSize(
                                                    0.5),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ])),
                        Container(
                            color: Colors.white,
                            height: getVerticalSize(220),
                            width: double.maxFinite,
                            margin: getMargin(top: 20),
                            child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          padding: getPadding(
                                              left: 37,
                                              top: 23,
                                              right: 37,
                                              bottom: 23),
                                          decoration:
                                          AppDecoration.outlineBlack90035,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text("Reviews",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold18Black900
                                                        .copyWith(
                                                        letterSpacing:
                                                        getHorizontalSize(
                                                            1.8))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 44,
                                                            top: 6,
                                                            right: 44,
                                                            bottom: 145),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                            ]))),

                                              ]))),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 58.0),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [

                                              SizedBox(
                                                  height: getVerticalSize(140),
                                                  child: Obx(() =>
                                                      ListView.separated(
                                                          padding: getPadding(
                                                              left: 15,
                                                              top: 12,
                                                              right: 10),
                                                          scrollDirection:
                                                          Axis.horizontal,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                height:
                                                                getVerticalSize(
                                                                    45));
                                                          },
                                                          itemCount: controller
                                                              .fiveModelObj
                                                              .value
                                                              .fiveItemList
                                                              .value
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            FiveItemModel model =
                                                            controller
                                                                .fiveModelObj
                                                                .value
                                                                .fiveItemList
                                                                .value[index];
                                                            return FiveItemWidget(
                                                                model);
                                                          })))
                                            ])),
                                  ),

                                ])),
                        Container(
                            color: Colors.white,
                            height: getVerticalSize(220),
                            width: double.maxFinite,
                            margin: getMargin(top: 0),
                            child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          padding: getPadding(
                                              left: 37,
                                              top: 23,
                                              right: 37,
                                              bottom: 23),
                                          decoration:
                                          AppDecoration.outlineBlack90035,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text("Photos",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold18Black900
                                                        .copyWith(
                                                        letterSpacing:
                                                        getHorizontalSize(
                                                            1.8))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 44,
                                                            top: 6,
                                                            right: 44,
                                                            bottom: 145),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                            ]))),

                                              ]))),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 58.0),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [

                                              SizedBox(
                                                  height: getVerticalSize(140),
                                                  child: Obx(() =>
                                                      ListView.separated(
                                                          padding: getPadding(
                                                              left: 15,
                                                              top: 12,
                                                              right: 10),
                                                          scrollDirection:
                                                          Axis.horizontal,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                height:
                                                                getVerticalSize(
                                                                    45));
                                                          },
                                                          itemCount: controller
                                                              .fiveModelObj
                                                              .value
                                                              .fiveItemList
                                                              .value
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            FiveItemModel model =
                                                            controller
                                                                .fiveModelObj
                                                                .value
                                                                .fiveItemList
                                                                .value[index];
                                                            return FiveItemWidget(
                                                                model);
                                                          })))
                                            ])),
                                  ),

                                ])),
                        SizedBox(height: 20,)
                      ])),
            )));
  }

  void onTapImgFloatingicon() {
    //Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageGallery()));
  }

  void onTapBtnGroup104() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ImageGallery()));
  }





  //dialog

  void _showAddBusinessDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return

          Container(

          color: Color(0xFFFFCC66),

          padding: EdgeInsets.all(16),
          height: MediaQuery
              .of(context)
              .size
              .height * 0.4, // Adjust the height as needed
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 13,
              top: 12,
              right: 13,
              bottom: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    top: 33,
                  ),
                  child: Text(
                    enUs["lbl_add_a_business2"]!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold20.copyWith(
                      letterSpacing: getHorizontalSize(
                        2.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    293,
                  ),
                  margin: getMargin(
                    left: 33,
                    top: 21,
                    right: 40,
                  ),
                  child: Text(
                   enUs ["msg_what_s_your_relationship"]!,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtInterLight16.copyWith(
                      letterSpacing: getHorizontalSize(
                        1.6,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    40,
                  ),
                  text: enUs["lbl_i_m_a_customer"]!,
                  margin: getMargin(
                    top: 60,
                  ),
                  shape: ButtonShape.RoundedBorder15,
                  padding: ButtonPadding.PaddingAll12,
                  fontStyle: ButtonFontStyle.InterMedium16,
                ),
                CustomButton(
                  height: getVerticalSize(
                    40,
                  ),
                  text: enUs["lbl_as_a_bussiness"]!,
                  margin: getMargin(
                    top: 16,
                  ),
                  variant: ButtonVariant.FillBluegray100,
                  shape: ButtonShape.RoundedBorder15,
                  padding: ButtonPadding.PaddingAll12,
                  fontStyle: ButtonFontStyle.InterMedium16Black900,
                ),
              ],
            ),
          ), // Replace with your dialog content
        );
      },
    );
  }
}

// void _showTopHalfDialog(BuildContext context) {
//   showGeneralDialog(
//     context: context,
//     barrierDismissible: true,
//     barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
//     transitionDuration: const Duration(milliseconds: 300),
//     transitionBuilder: (context, animation, secondaryAnimation, child) {
//       return SlideTransition(
//         position: Tween<Offset>(
//           begin: const Offset(0.0, -1.0), // Start from the top
//           end: Offset.zero,
//         ).animate(animation),
//         child: child,
//       );
//     },
//     pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
//       return Container(
//         color: Color(0xFFFFCC66),
//         padding: EdgeInsets.all(16),
//         height: MediaQuery.of(context).size.height * 0.5, // Cover half of the screen height
//         child: Container(
//           width: double.maxFinite,
//           padding: EdgeInsets.symmetric(
//             horizontal: 13,
//             vertical: 12,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               // Your dialog content here
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }



bool _fromTop = true;

void _showTopHalfDialog(BuildContext context) {
  showGeneralDialog(
    barrierLabel: "Label",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return Align(
        alignment: _fromTop ? Alignment.topCenter : Alignment.bottomCenter,
        child: Container(
          height: 300,
          child: SizedBox.expand(
              child: Scaffold(

                body: SizedBox(
                  width: getHorizontalSize(
                    443,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.amber[300],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.notification_important, color: Colors.white),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_the_business_owner".tr,
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  "lbl_1h_ago".tr,
                                  style: TextStyle(fontSize: 8, color: Colors.grey[800]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
          ),
          margin: EdgeInsets.only(top: 50, left: 12, right: 12, bottom: 50),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0, _fromTop ? -1 : 1), end: Offset(0, 0)).animate(anim1),
        child: child,
      );
    },
  );
}

// Inside your widget build method:

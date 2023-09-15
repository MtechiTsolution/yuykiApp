import 'package:example/localization/en_us/en_us_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../../widgets/app_bar/appbar_title.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_image_view.dart';
import 'message.dart';

class Talk extends StatefulWidget {
  // const Talk({super.key});

  @override
  State<Talk> createState() => _TalkState();
}

class _TalkState extends State<Talk> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            80,
          ),
          title: Padding(
            padding: getPadding(
              left: 24,
              top: 0,
              bottom: 4,
            ),
            child: Row(
              children: [
                AppbarImage(
                    height: getSize(23),
                    width: getSize(23),
                    imagePath: ImageConstant.imgBack13,
                    margin: getMargin(left: 0, top: 10, bottom: 10),
                    onTap: () {
                      onTapBack();
                    }),
                AppbarTitle(
                  text: enUs["lbl_inbox2"]!,
                  margin: getMargin(
                    left: 119,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              height: getVerticalSize(
                23,
              ),
              width: getHorizontalSize(
                20,
              ),
              margin: getMargin(
                left: 19,
                top: 0,
                right: 19,
                bottom: 7,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  AppbarImage(
                    height: getVerticalSize(23,), width: getHorizontalSize(23,),
                    imagePath: ImageConstant.imgFrame181,
                    margin: getMargin(
                      right: 4,),),
                  AppbarImage(
                    height: getVerticalSize(
                      15,
                    ),
                    width: getHorizontalSize(
                      11,
                    ),
                    imagePath: ImageConstant.imgFrame181,
                    margin: getMargin(
                      left: 9,
                      top: 0,
                    ),
                  ),
                ],
              ),
            ),
          ],
          styleType: Style.bgFillGray20002,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 13,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(344),
                  margin: getMargin(left: 24, right: 25),
                  padding: getPadding(left: 10, top: 0, right: 10, bottom: 0),
                  decoration: AppDecoration.outlineBlack9003f4.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgSearchAmber300,
                            height: getSize(23),
                            width: getSize(23),
                          ),
                          SizedBox(width: 10), // Add some spacing between the icon and the text field
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Search', // Placeholder text
                                border: InputBorder.none, // Hide the border
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 30,
                    ),
                    child: Text(
                      enUs["lbl_new_leads"]!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: getHorizontalSize(
                      281,
                    ),
                    margin: getMargin(
                      left: 23,
                      top: 20,
                      right: 88,
                    ),
                    child: Text(
                      enUs["msg_once_you_receive"]!,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsLight14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.7,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    14,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray300,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 16,
                    ),
                    child: Text(
                      enUs["lbl_contacted"]!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold20,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    enUs["msg_respond_to_customers"]!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsLight14.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.7,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Message()));
                  },
                  child: Container(
                    height: getVerticalSize(
                      136 + 19,
                    ),
                    width: getHorizontalSize(
                      357,
                    ),
                    margin: getMargin(
                      top: 17,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 67,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // SizedBox(
                                //   width: getHorizontalSize(
                                //     145,
                                //   ),
                                //   child: Text(
                                //     enUs["msg_sofia_c_garbage"]!,
                                //     maxLines: null,
                                //     textAlign: TextAlign.left,
                                //     style: AppStyle.txtPoppinsBold14.copyWith(
                                //       letterSpacing: getHorizontalSize(
                                //         0.5,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                    top: 5,
                                  ),
                                  child: Text(
                                    enUs["lbl_34468"]!,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsLight8.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.4,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                    top: 5,
                                  ),
                                  child: Text(
                                    enUs["lbl_nearby_jobs"]!,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsLight8.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.4,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 4,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        enUs["lbl_you_replied"]!,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold8.copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.4,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                        ),
                                        child: Text(
                                          enUs["lbl_34468"]!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsLight8.copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: getPadding(
                              top: 9,
                              bottom: 9,
                            ),
                            decoration: AppDecoration.fillGray100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse85,
                                  height: getSize(
                                    50,
                                  ),
                                  width: getSize(
                                    50,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      25,
                                    ),
                                  ),
                                  margin: getMargin(
                                    top: 3,
                                    bottom: 43,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: getHorizontalSize(
                                            140,
                                          ),
                                          child: Text(
                                            enUs["msg_sofia_c_garbage"]!,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold14
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.7,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 98,
                                            top: 7,
                                            bottom: 24,
                                          ),
                                          child: Text(
                                            enUs["lbl_1_year_ago"]!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsLight8
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.4,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 5,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocation11,
                                            height: getSize(
                                              10,
                                            ),
                                            width: getSize(
                                              10,
                                            ),
                                            margin: getMargin(
                                              bottom: 1,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 2,
                                            ),
                                            child: Text(
                                              enUs["lbl_34468"]!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsLight8
                                                  .copyWith(
                                                letterSpacing: getHorizontalSize(
                                                  0.4,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        top: 5,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgArrows1,
                                            height: getSize(
                                              8,
                                            ),
                                            width: getSize(
                                              8,
                                            ),
                                            margin: getMargin(
                                              bottom: 3,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 3,
                                            ),
                                            child: Text(
                                              enUs["lbl_nearby_jobs"]!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsLight8
                                                  .copyWith(
                                                letterSpacing: getHorizontalSize(
                                                  0.4,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        top: 4,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            enUs["lbl_you_replied"]!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsBold8.copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.4,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 7,
                                            ),
                                            child: Text(
                                              enUs["lbl_34468"]!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsLight8
                                                  .copyWith(
                                                letterSpacing: getHorizontalSize(
                                                  0.4,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: getVerticalSize(
                    2,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.amber300,
                  indent: getHorizontalSize(
                    37,
                  ),
                  endIndent: getHorizontalSize(
                    38,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapBack() {
    Navigator.pop(context);

  }
}

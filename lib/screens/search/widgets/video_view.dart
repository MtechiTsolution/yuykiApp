import 'package:flutter/material.dart';

import '../../../home.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';


class Video_review extends StatefulWidget {
  //const Video_review({super.key});

  @override
  State<Video_review> createState() => _Video_reviewState();
}

class _Video_reviewState extends State<Video_review> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Your Next Reviews awaits",overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold14
                        .copyWith(letterSpacing: getHorizontalSize(1.8))),
              )),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: getPadding(left: 7, top: 10),
              child: IntrinsicWidth(
                  child: SizedBox(
                      height: getVerticalSize(180),
                      width: getHorizontalSize(600),
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  // onTapRowrectanglefor();

                                },
                                child: Row(children: [
                                  GestureDetector(
                                    onTap: () {
                                      // onTapRowrectanglefor();
                                     //Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage2()));
                                    },
                                    child: Container(
                                      height: getVerticalSize(180),
                                      width: getHorizontalSize(127),
                                      margin: getMargin(left: 10),
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgRectangle41,
                                            height: getVerticalSize(180),
                                            width: getHorizontalSize(127),
                                            radius: BorderRadius.circular(getHorizontalSize(10)),
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                              padding: getPadding(left: 5, top: 8, right: 7),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(left: 1),
                                                    child: Text(
                                                      "Shopping",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtPoppinsBold9,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(left: 1),
                                                    child: Text(
                                                      "Austin,USA",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtPoppinsMedium6,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(right: 15,top: 35,left: 35),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        CustomIconButton(
                                                          height: 30,
                                                          width: 30,
                                                          margin: getMargin(left: 8),
                                                          variant: IconButtonVariant.FillWhiteA700c1,
                                                          child: CustomImageView(
                                                            svgPath: ImageConstant.imgPlayBlack90032x32,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(top: 15),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant.imgEllipse5414x15,
                                                          height: getVerticalSize(25),
                                                          width: getHorizontalSize(25),
                                                          radius: BorderRadius.circular(getHorizontalSize(7)),
                                                          margin: getMargin(top: 12),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(left: 1, top: 15),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                "Mujahid Hussain",
                                                                overflow: TextOverflow.ellipsis,
                                                                textAlign: TextAlign.left,
                                                                style: AppStyle.txtPoppinsBold6,
                                                              ),
                                                              Align(
                                                                alignment: Alignment.centerRight,
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                  children: [
                                                                    SizedBox(
                                                                      height: getSize(15),
                                                                      width: getSize(15),
                                                                      child: Stack(
                                                                        alignment: Alignment.centerRight,
                                                                        children: [
                                                                          CustomImageView(
                                                                            svgPath: ImageConstant.imgVectorAmber400,
                                                                            height: getVerticalSize(15),
                                                                            width: getHorizontalSize(14),
                                                                            alignment: Alignment.centerLeft,
                                                                          ),

                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: getSize(15),
                                                                      width: getSize(15),
                                                                      child: Stack(
                                                                        alignment: Alignment.centerRight,
                                                                        children: [
                                                                          CustomImageView(
                                                                            svgPath: ImageConstant.imgVectorAmber400,
                                                                            height: getVerticalSize(15),
                                                                            width: getHorizontalSize(14),
                                                                            alignment: Alignment.centerLeft,
                                                                          ),

                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: getSize(15),
                                                                      width: getSize(15),
                                                                      child: Stack(
                                                                        alignment: Alignment.centerRight,
                                                                        children: [
                                                                          CustomImageView(
                                                                            svgPath: ImageConstant.imgVectorAmber400,
                                                                            height: getVerticalSize(15),
                                                                            width: getHorizontalSize(14),
                                                                            alignment: Alignment.centerLeft,
                                                                          ),

                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: getSize(15),
                                                                      width: getSize(15),
                                                                      child: Stack(
                                                                        alignment: Alignment.centerRight,
                                                                        children: [
                                                                          CustomImageView(
                                                                            svgPath: ImageConstant.imgVectorAmber400,
                                                                            height: getVerticalSize(15),
                                                                            width: getHorizontalSize(14),
                                                                            alignment: Alignment.centerLeft,
                                                                          ),

                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: getSize(15),
                                                                      width: getSize(15),
                                                                      child: Stack(
                                                                        alignment: Alignment.centerRight,
                                                                        children: [
                                                                          CustomImageView(
                                                                            svgPath: ImageConstant.imgVectorAmber400,
                                                                            height: getVerticalSize(15),
                                                                            width: getHorizontalSize(14),
                                                                            alignment: Alignment.centerLeft,
                                                                          ),

                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: getVerticalSize(9),
                                                    width: getHorizontalSize(101),
                                                    margin: getMargin(top: 1),
                                                    child: Stack(
                                                      alignment: Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                          height: getVerticalSize(5),
                                                          width: getHorizontalSize(4),
                                                          alignment: Alignment.topLeft,
                                                          margin: getMargin(left: 22),
                                                        ),
                                                        CustomImageView(
                                                          svgPath: ImageConstant.imgVectorOrange500,
                                                          height: getVerticalSize(5),
                                                          width: getHorizontalSize(2),
                                                          alignment: Alignment.topLeft,
                                                          margin: getMargin(left: 24),
                                                        ),
                                                        Align(
                                                          alignment: Alignment.bottomCenter,
                                                          child: SizedBox(
                                                            width: getHorizontalSize(101),
                                                            child: Text(
                                                              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor ",
                                                              maxLines: null,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle.txtPoppinsMedium5,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(180),
                                    width: getHorizontalSize(127),
                                    margin: getMargin(left: 10),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgRectangle41,
                                          height: getVerticalSize(180),
                                          width: getHorizontalSize(127),
                                          radius: BorderRadius.circular(getHorizontalSize(10)),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: getPadding(left: 5, top: 8, right: 7),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Text(
                                                    "Shopping",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtPoppinsBold9,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Text(
                                                    "Austin,USA",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtPoppinsMedium6,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(right: 15,top: 35,left: 35),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 30,
                                                        width: 30,
                                                        margin: getMargin(left: 8),
                                                        variant: IconButtonVariant.FillWhiteA700c1,
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant.imgPlayBlack90032x32,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(top: 15),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant.imgEllipse5414x15,
                                                        height: getVerticalSize(25),
                                                        width: getHorizontalSize(25),
                                                        radius: BorderRadius.circular(getHorizontalSize(7)),
                                                        margin: getMargin(top: 12),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(left: 1, top: 15),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              "Mujahid Hussain",
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle.txtPoppinsBold6,
                                                            ),
                                                            Align(
                                                              alignment: Alignment.centerRight,
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: getVerticalSize(9),
                                                  width: getHorizontalSize(101),
                                                  margin: getMargin(top: 1),
                                                  child: Stack(
                                                    alignment: Alignment.topLeft,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant.imgVectorAmber400,
                                                        height: getVerticalSize(5),
                                                        width: getHorizontalSize(4),
                                                        alignment: Alignment.topLeft,
                                                        margin: getMargin(left: 22),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant.imgVectorOrange500,
                                                        height: getVerticalSize(5),
                                                        width: getHorizontalSize(2),
                                                        alignment: Alignment.topLeft,
                                                        margin: getMargin(left: 24),
                                                      ),
                                                      Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: SizedBox(
                                                          width: getHorizontalSize(101),
                                                          child: Text(
                                                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor ",
                                                            maxLines: null,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtPoppinsMedium5,
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
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(180),
                                    width: getHorizontalSize(127),
                                    margin: getMargin(left: 10),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgRectangle41,
                                          height: getVerticalSize(180),
                                          width: getHorizontalSize(127),
                                          radius: BorderRadius.circular(getHorizontalSize(10)),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: getPadding(left: 5, top: 8, right: 7),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Text(
                                                    "Shopping",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtPoppinsBold9,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Text(
                                                    "Austin,USA",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtPoppinsMedium6,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(right: 15,top: 35,left: 35),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 30,
                                                        width: 30,
                                                        margin: getMargin(left: 8),
                                                        variant: IconButtonVariant.FillWhiteA700c1,
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant.imgPlayBlack90032x32,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(top: 15),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant.imgEllipse5414x15,
                                                        height: getVerticalSize(25),
                                                        width: getHorizontalSize(25),
                                                        radius: BorderRadius.circular(getHorizontalSize(7)),
                                                        margin: getMargin(top: 12),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(left: 1, top: 15),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              "Mujahid Hussain",
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle.txtPoppinsBold6,
                                                            ),
                                                            Align(
                                                              alignment: Alignment.centerRight,
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),
                                                                        
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),
                                                                        
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),
                                                                        
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: getVerticalSize(9),
                                                  width: getHorizontalSize(101),
                                                  margin: getMargin(top: 1),
                                                  child: Stack(
                                                    alignment: Alignment.topLeft,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant.imgVectorAmber400,
                                                        height: getVerticalSize(5),
                                                        width: getHorizontalSize(4),
                                                        alignment: Alignment.topLeft,
                                                        margin: getMargin(left: 22),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant.imgVectorOrange500,
                                                        height: getVerticalSize(5),
                                                        width: getHorizontalSize(2),
                                                        alignment: Alignment.topLeft,
                                                        margin: getMargin(left: 24),
                                                      ),
                                                      Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: SizedBox(
                                                          width: getHorizontalSize(101),
                                                          child: Text(
                                                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor ",
                                                            maxLines: null,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtPoppinsMedium5,
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
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(180),
                                    width: getHorizontalSize(127),
                                    margin: getMargin(left: 10),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgRectangle41,
                                          height: getVerticalSize(180),
                                          width: getHorizontalSize(127),
                                          radius: BorderRadius.circular(getHorizontalSize(10)),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: getPadding(left: 5, top: 8, right: 7),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Text(
                                                    "Shopping",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtPoppinsBold9,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Text(
                                                    "Austin,USA",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtPoppinsMedium6,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(right: 15,top: 35,left: 35),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 30,
                                                        width: 30,
                                                        margin: getMargin(left: 8),
                                                        variant: IconButtonVariant.FillWhiteA700c1,
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant.imgPlayBlack90032x32,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(top: 15),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant.imgEllipse5414x15,
                                                        height: getVerticalSize(25),
                                                        width: getHorizontalSize(25),
                                                        radius: BorderRadius.circular(getHorizontalSize(7)),
                                                        margin: getMargin(top: 12),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(left: 1, top: 13),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              "Mujahid Hussain",
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle.txtPoppinsBold6,
                                                            ),
                                                            Align(
                                                              alignment: Alignment.centerRight,
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: getSize(15),
                                                                    width: getSize(15),
                                                                    child: Stack(
                                                                      alignment: Alignment.centerRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath: ImageConstant.imgVectorAmber400,
                                                                          height: getVerticalSize(15),
                                                                          width: getHorizontalSize(14),
                                                                          alignment: Alignment.centerLeft,
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: getVerticalSize(9),
                                                  width: getHorizontalSize(101),
                                                  margin: getMargin(top: 1),
                                                  child: Stack(
                                                    alignment: Alignment.topLeft,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant.imgVectorAmber400,
                                                        height: getVerticalSize(5),
                                                        width: getHorizontalSize(4),
                                                        alignment: Alignment.topLeft,
                                                        margin: getMargin(left: 22),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant.imgVectorOrange500,
                                                        height: getVerticalSize(5),
                                                        width: getHorizontalSize(2),
                                                        alignment: Alignment.topLeft,
                                                        margin: getMargin(left: 24),
                                                      ),
                                                      Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: SizedBox(
                                                          width: getHorizontalSize(101),
                                                          child: Text(
                                                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor ",
                                                            maxLines: null,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtPoppinsMedium5,
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
                                      ],
                                    ),
                                  )
                                ]))),
                      ])))),

        ],
      ),
    );
  }
}

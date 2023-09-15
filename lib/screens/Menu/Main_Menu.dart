import 'dart:async';

import 'package:example/app_export.dart';
import 'package:example/localization/en_us/en_us_translations.dart';
import 'package:example/screens/Menu/Events/Events.dart';
import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import '../Check-Ins/checkins.dart';
import '../collection/collections.dart';
import 'Activity/activity_screen.dart';
import 'Reservation/reservation.dart';
import 'String/String.dart';
import 'Talking/Talk.dart';


class Main_Menu extends StatefulWidget {
 // const Main_Menu({super.key});

  @override
  State<Main_Menu> createState() => _Main_MenuState();
}

class _Main_MenuState extends State<Main_Menu> {
  List<String> imagePaths = [
    ImageConstant.imgRectangle102,
    ImageConstant.imgRectangle43,
    ImageConstant.imgMailinboxapp1,
    ImageConstant.imgRectangle43,
  ];
  late PageController _pageController = PageController(initialPage: 0);

  int currentIndex = 0;
  //late PageController _pageController;
  Timer? imageTimer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    startImageTimer(); // Call the function to start automatic scrolling
  }



  @override
  void dispose() {
    _pageController.dispose();
    imageTimer?.cancel();
    super.dispose();
  }
  void startImageTimer() {
    imageTimer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (_pageController.hasClients) {
        int nextPage = (currentIndex + 1) % imagePaths.length;
        setState(() {
          currentIndex = nextPage;
        });
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    });
  }

  get fs => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body:
            Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 1),
                              padding: getPadding(
                                  left: 137,
                                  top: 0,
                                  right: 137,
                                  bottom: 7),
                              decoration: AppDecoration.outlineBlack90035,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                        ImageConstant.imgGroup113,
                                        height: getVerticalSize(50),
                                        width: getHorizontalSize(117),
                                        margin: getMargin(top: 20))
                                  ]))),

                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                  Container(
                                  height: getVerticalSize(174),
                            width: double.maxFinite,
                            margin: getMargin(top: 8),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                PageView.builder(
                                  controller: _pageController,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: imagePaths.length,
                                  onPageChanged: (index) {
                                    setState(() {
                                      currentIndex = index;
                                    });
                                  },
                                  itemBuilder: (BuildContext context, int index) {
                                    return CustomImageView(
                                      imagePath: imagePaths[index],
                                      height: getVerticalSize(174),
                                      width: getHorizontalSize(393),
                                      alignment: Alignment.center,
                                    );
                                  },
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(left: 18, right: 17),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: getHorizontalSize(138),
                                          child: Text(
                                            enUs["msg_a_new_home_for_your"]!,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold18Amber300,
                                          ),
                                        ),
                                        CustomButton(
                                          height: getVerticalSize(34),
                                          width: getHorizontalSize(117),
                                          text: enUs["lbl_go_to_project"]!,
                                          margin: getMargin(top: 67),
                                          variant: ButtonVariant.FillAmber300,
                                          shape: ButtonShape.RoundedBorder5,
                                          fontStyle: ButtonFontStyle.InterBold14,
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Reservation()));
                                      },
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(left: 44, top: 14),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant.imgCalendar,
                                                    height: getSize(29),
                                                    width: getSize(29),
                                                    margin: getMargin(bottom: 2)),
                                                Padding(
                                                    padding: getPadding(left: 31, top: 4),
                                                    child: Text(String_Menu.lbl_reservations,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style:
                                                        AppStyle.txtPoppinsRegular18))
                                              ]))),
                                    ),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Activities()));
                                      },
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(left: 50, top: 10),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                    ImageConstant.imgRewindAmber300,
                                                    height: getVerticalSize(24),
                                                    width: getHorizontalSize(17),
                                                    margin: getMargin(top: 1, bottom: 1)),
                                                Padding(
                                                    padding: getPadding(left: 38),
                                                    child: Text(enUs["lbl_activity"]!,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style:
                                                        AppStyle.txtPoppinsRegular18))
                                              ]))),
                                    ),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Collections()));
                                      },
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(left: 50, top: 10),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                    ImageConstant.imgBookmarkAmber300,
                                                    height: getVerticalSize(24),
                                                    width: getHorizontalSize(17),
                                                    margin: getMargin(top: 1, bottom: 1)),
                                                Padding(
                                                    padding: getPadding(left: 38),
                                                    child: Text(enUs["lbl_bookmarks"]!,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style:
                                                        AppStyle.txtPoppinsRegular18))
                                              ]))),
                                    ),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(left: 50, top: 10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                  ImageConstant.imgFrameAmber30022x34,
                                                  height: getVerticalSize(24),
                                                  width: getHorizontalSize(17),
                                                  margin: getMargin(top: 1, bottom: 1)),
                                              Padding(
                                                  padding: getPadding(left: 38),
                                                  child: Text(enUs["lbl_deals_offers"]!,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style:
                                                      AppStyle.txtPoppinsRegular18))
                                            ]))),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Events()));
                                      },
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(left: 50, top: 10),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                    ImageConstant.imgGroup117Amber300,
                                                    height: getVerticalSize(24),
                                                    width: getHorizontalSize(17),
                                                    margin: getMargin(top: 1, bottom: 1)),
                                                Padding(
                                                    padding: getPadding(left: 38),
                                                    child: Text(enUs["lbl_events"]!,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style:
                                                        AppStyle.txtPoppinsRegular18))
                                              ]))),
                                    ),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckIns()));
                                      },
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(left: 52, top: 13),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFrameAmber30023x17,
                                                    height: getVerticalSize(23),
                                                    width: getHorizontalSize(17),
                                                    margin: getMargin(bottom: 3)),
                                                Padding(
                                                    padding: getPadding(left: 36),
                                                    child: Text(enUs["lbl_check_ins"]!,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style:
                                                        AppStyle.txtPoppinsRegular18))
                                              ]))),
                                    ),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),

                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Talk()));
                                      },
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(left: 52, top: 13),
                                              child: Row(children: [
                                                CustomImageView(

                                                    svgPath: ImageConstant
                                                        .imgMenu,
                                                    height: getVerticalSize(23),
                                                    width: getHorizontalSize(17),
                                                    margin: getMargin(bottom: 3)),
                                                Padding(
                                                    padding: getPadding(left: 36),
                                                    child: Text(enUs["lbl_talk"]!,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style:
                                                        AppStyle.txtPoppinsRegular18))
                                              ]))),
                                    ),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),

                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(left: 45, top: 37),
                                            child: Text(
                                                enUs["lbl_recently_viewed"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterSemiBold18))),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 50, top: 15, right: 62),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant.imgEllipse51,
                                                  height: getSize(38),
                                                  width: getSize(38),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(19))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10, top: 8, bottom: 7),
                                                  child: Text(
                                                      enUs["msg_lake_bommeville"]!,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterMedium18))
                                            ]))),
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(left: 50, top: 15),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant.imgEllipse52,
                                                  height: getSize(38),
                                                  width: getSize(38),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(19))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10, top: 8, bottom: 7),
                                                  child: Text(enUs["lbl_muhammad"]!,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterMedium18))
                                            ]))),
                                    Container(
                                        height: getVerticalSize(1),
                                        width: getHorizontalSize(350),
                                        margin: getMargin(top: 16),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                      width: getHorizontalSize(350),
                                                      child: Divider(
                                                          height: getVerticalSize(1),
                                                          thickness: getVerticalSize(1),
                                                          color:
                                                          ColorConstant.amber300))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                      width: getHorizontalSize(350),
                                                      child: Divider(
                                                          height: getVerticalSize(1),
                                                          thickness: getVerticalSize(1),
                                                          color:
                                                          ColorConstant.amber300)))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(left: 50, top: 15),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant.imgEllipse53,
                                                  height: getSize(38),
                                                  width: getSize(38),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(19))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10, top: 8, bottom: 8),
                                                  child: Text(
                                                      enUs["lbl_abbas_bhatti"]!,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterMedium18))
                                            ]))),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.amber300,
                                            indent: getHorizontalSize(22),
                                            endIndent: getHorizontalSize(21))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(left: 45, top: 38),
                                            child: Text(
                                                enUs["lbl_more"]!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterSemiBold18))),
                                    Container(
                                        width: getHorizontalSize(350),
                                        margin: getMargin(left: 22, top: 8, right: 21),
                                        padding: getPadding(
                                            left: 25, top: 11, right: 25, bottom: 11),

                                        // decoration: BoxDecoration(
                                        //     image: DecorationImage(
                                        //         image:
                                        //        // fs.Svg(ImageConstant.imgGroup214),
                                        //         fit: BoxFit.cover)),
                                        child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant.imgGroup,
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        margin: getMargin(top: 4)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 32, bottom: 1),
                                                        child: Text(

                                                            enUs["lbl_find_friends"]!,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular18))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(top: 21),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                            ImageConstant.imgMap,
                                                            height: getVerticalSize(21),
                                                            width:
                                                            getHorizontalSize(24),
                                                            margin: getMargin(
                                                                top: 2, bottom: 3)),
                                                        Padding(
                                                            padding:
                                                            getPadding(left: 33),
                                                            child: Text(
                                                                enUs["lbl_add_a_business"]!,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign.left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular18))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 3, top: 21, right: 84),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath:
                                                        ImageConstant.imgArrowdown,
                                                        height: getVerticalSize(16),
                                                        width: getHorizontalSize(19),
                                                        margin: getMargin(
                                                            top: 8, bottom: 3)),
                                                    Padding(
                                                        padding: getPadding(left: 35),
                                                        child: Text(
                                                            enUs["msg_yuyki_for_business"]!,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular18))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(left: 3, top: 23),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath:
                                                        ImageConstant.imgLightbulb,
                                                        height: getVerticalSize(14),
                                                        width: getHorizontalSize(25),
                                                        margin: getMargin(
                                                            top: 7, bottom: 5)),
                                                    Padding(
                                                        padding: getPadding(left: 29),
                                                        child: Text(

                                                            enUs["msg_yuyki_elite_squad"]!,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular18))
                                                  ])),

                                              Padding(
                                                  padding: getPadding(
                                                      left: 3, top: 21, right: 84),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath:
                                                        ImageConstant.imgSettings,
                                                        height: getVerticalSize(16),
                                                        width: getHorizontalSize(19),
                                                        margin: getMargin(
                                                            top: 8, bottom: 3)),
                                                    Padding(
                                                        padding: getPadding(left: 35),
                                                        child: Text(
                                                            enUs["lbl_settings"]!,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular18))
                                                  ])),

                                              Padding(
                                                  padding: getPadding(left: 5, top: 23),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUserAmber300,
                                                        height: getVerticalSize(22),
                                                        width: getHorizontalSize(17),
                                                        margin: getMargin(
                                                            top: 2, bottom: 2)),
                                                    Padding(
                                                        padding: getPadding(left: 35),
                                                        child: Text(
                                                            enUs["lbl_support"]!,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular18))
                                                  ]))
                                            ]))
                                  ])))
                    ]))));
  }
}


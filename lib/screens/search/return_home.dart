import 'package:example/localization/en_us/en_us_translations.dart';
import 'package:example/screens/search/widgets/retrun_home.dart';
import 'package:example/screens/search/widgets/search1.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../home.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../Profile/Profile.dart';


class Return_HomeScreen extends StatefulWidget {
 // const Return_Home({super.key});

  @override
  State<Return_HomeScreen> createState() => _Return_HomeState();
}

class _Return_HomeState extends State<Return_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async {
        // Navigate back to the previous screen
        Navigator.of(context).pop();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        return true;
        return true;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(100),
              leadingWidth: 47,
              leading: AppbarImage(
                  height: getSize(10),
                  width: getSize(10),
                  imagePath: ImageConstant.imgBack13,
                  margin: getMargin(left: 24, top: 0, bottom: 40),
                  onTap: () {
                    onTapBackthirteen();
                  }),
              centerTitle: true,
              title: AppbarSubtitle2(
                  text: enUs["lbl_surprise_me"]!,
                  margin: getMargin(top: 0, bottom: 40)),
              styleType: Style.bgShadowBlack90035),
          body: Container(
              width: double.maxFinite,
              padding: getPadding(left: 43, top: 49, right: 43, bottom: 49),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgGroup147,
                        height: getVerticalSize(168),
                        width: getHorizontalSize(250),
                        margin: getMargin(top: 0)),
                    Container(
                        width: getHorizontalSize(231),
                        margin: getMargin(left: 39, top: 0, right: 37),
                        child: Text(enUs["msg_we_re_sorry_we"]!,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtPoppinsBold18Black900)),
                    Container(
                        width: getHorizontalSize(307),
                        margin: getMargin(top: 19),
                        child: Text(enUs["msg_try_again_in_another"]!,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtPoppinsRegular16)),
                    Padding(
                        padding: getPadding(top: 10),
                        child: Text(enUs["msg_get_inspired_by"]!,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold16)),
                    Gridgroup261ItemWidget()
                  ]))),
    );

  }

  void onTapBackthirteen() {

    Navigator.of(context).pop();
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }
}

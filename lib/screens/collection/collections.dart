import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../search/Serach_screen_menu/Bussines_profile_reviews_videos.dart';
import '../search/widgets/video_view.dart';
import 'Widgets/collection_card.dart';
import 'Widgets/my_collection.dart';

class Collections extends StatefulWidget {
  // const Collections({super.key});

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(70),
                centerTitle: true,
                title: AppbarSubtitle2(
                    text: "Collections",
                    margin: getMargin(top: 20, bottom: 15)),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 15, top: 30, right: 15, bottom: 17),
                      child: Text("Create",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold16
                              .copyWith(letterSpacing: getHorizontalSize(0.8))))
                ],
                styleType: Style.bgShadowBlack90035),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 26),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 8),
                            child: Text("Featured in Holbrook, NY 11741",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium18),
                          ),
                        ),
                        Bussines_profile_video_reviews(),

 //Recent Collections
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Collectionimag(),
                        ),
                        MyCollection(),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Following  Collections",overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14
                                      .copyWith(letterSpacing: getHorizontalSize(1.8))),
                            )),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "You cant follow any collection yet, please select any collection from above collection. You cant follow any collection yet, please select any collection from above collection",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              softWrap: true, // Enable text wrapping
                            ),
                          ),
                        )

                      ],
                    )


                ))));
  }
}

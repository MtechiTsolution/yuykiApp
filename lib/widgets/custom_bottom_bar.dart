import 'package:example/app_export.dart';
import 'package:flutter/material.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/size_utils.dart';
import '../utils/image_constant.dart';
import 'custom_image_view.dart';


class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgMailWhiteA700,
      title: "lbl_ads".tr,
      type: BottomBarEnum.Ads,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMegaphone1,
      title: "lbl_ads".tr,
      type: BottomBarEnum.Ads,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBriefcase1,
      title: "lbl_biz_info".tr,
      type: BottomBarEnum.Bizinfo,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMessages1,
      title: "lbl_indox".tr,
      type: BottomBarEnum.Indox,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBell31,
      title: "lbl_notification".tr,
      type: BottomBarEnum.Notification,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameBlack900,
      title: "lbl_more".tr,
      type: BottomBarEnum.More,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.amber300,
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].isPng == true
                        ? null
                        : bottomMenuList[index].icon,
                    imagePath: bottomMenuList[index].isPng == true
                        ? bottomMenuList[index].icon
                        : null,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium8Black900.copyWith(
                        color: ColorConstant.black900,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].isPng == true
                    ? null
                    : bottomMenuList[index].icon,
                imagePath: bottomMenuList[index].isPng == true
                    ? bottomMenuList[index].icon
                    : null,
                height: getVerticalSize(
                  31,
                ),
                width: getHorizontalSize(
                  75,
                ),
                color: ColorConstant.whiteA700,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Ads,
  Bizinfo,
  Indox,
  Notification,
  More,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    this.title,
    required this.type,
    this.isPng = false,
  });

  String icon;

  String? title;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

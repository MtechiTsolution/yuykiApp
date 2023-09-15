import 'package:flutter/material.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_button.dart';
import '../return_home.dart';

class Return_home extends StatefulWidget {
  //const Return_home({super.key});

  @override
  State<Return_home> createState() => _Return_homeState();
}

class _Return_homeState extends State<Return_home> {
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
        width: double.maxFinite,
        child: Container(
            margin: getMargin(top: 19),
            padding: getPadding(left: 27, top: 32, right: 27, bottom: 32),
            decoration: AppDecoration.fillGray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      width: getHorizontalSize(190),
                      margin: getMargin(left: 6, top: 31),
                      child: Text("Picks from \nyour community",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold22)),
                  Container(
                      width: getHorizontalSize(160),
                      margin: getMargin(left: 6),
                      child: Text("Not sure where to eat?\nWe got you.",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Gray800)),
                  SizedBox(
                      width: double.maxFinite,
                      child: Container(
                          margin: getMargin(top: 33),
                          padding: getPadding(
                              left: 32, top: 20, right: 32, bottom: 20),
                          decoration: AppDecoration.fillAmber300.copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: getHorizontalSize(269),
                                    margin: getMargin(left: 2, top: 23),
                                    child: Text("Not sure where to eat?\nWe got you.",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterBlack24Black900)),
                                CustomButton(
                                  height: getVerticalSize(38),
                                  text: "Return to Home",
                                  margin: getMargin(left: 32, top: 32, right: 28),
                                  shape: ButtonShape.RoundedBorder15,
                                  fontStyle: ButtonFontStyle.InterBold20,
                                  onTap: () {
                                    // Navigate to Return_HomeScreen
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context) => Return_HomeScreen()),
                                    );
                                  },
                                )

                              ])))
                ])));
  }
}

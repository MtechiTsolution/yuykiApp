
import 'package:example/screens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/custom_text_form_field.dart';


class LoginScreen extends StatefulWidget {
  //const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 5, right: 20, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSkip();
                              },
                              child: Padding(
                                  padding: getPadding(top: 50),
                                  child: Text("Skip",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular18)))),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("Welcome to",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterLight29.copyWith(
                                  letterSpacing: getHorizontalSize(3.48)))),
                      CustomImageView(
                          svgPath: ImageConstant.imgFrameBlack90002,
                          height: getVerticalSize(61),
                          width: getHorizontalSize(126),
                          margin: getMargin(top: 15)),
                      Container(
                          width: getHorizontalSize(293),
                          margin: getMargin(left: 36, top: 12, right: 23),
                          child: Text("To save your preferences and start finding \ngreat spots near you, sign up below ",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsLight14)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroupOrange400,
                          height: getVerticalSize(187),
                          width: getHorizontalSize(185),
                          margin: getMargin(top: 8)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("With login",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold18.copyWith(
                                  letterSpacing: getHorizontalSize(1.8)))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgApple,
                                    height: getSize(47),
                                    width: getSize(47),
                                    margin: getMargin(top: 6, bottom: 6),
                                    onTap: () {
                                      onTapImgApple();
                                    }),
                                CustomImageView(
                                    imagePath: ImageConstant.imgFacebook,
                                    height: getSize(59),
                                    width: getSize(59),
                                    margin: getMargin(left: 42)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgGoogle1,
                                    height: getSize(43),
                                    width: getSize(43),
                                    margin:
                                    getMargin(left: 40, top: 8, bottom: 8),
                                    onTap: () {
                                      onTapImgGoogleone();
                                    })
                              ])),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 5,
                        margin: getMargin(top: 23),
                        color: ColorConstant.gray100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Container(
                          height: getVerticalSize(46),
                          width: getHorizontalSize(339),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration: AppDecoration.outlineBlack9003f.copyWith(
                                    borderRadius: BorderRadiusStyle.roundedBorder6,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: getHorizontalSize(113),
                                        padding: getPadding(
                                          left: 10,
                                          top: 7,
                                          right: 10,
                                          bottom: 7,
                                        ),
                                        decoration: AppDecoration.fillGray20001.copyWith(
                                          borderRadius: BorderRadiusStyle.roundedBorder6,
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            // Handle the click event to open the country code selection screen
                                            // You can implement the logic here to show the selection screen
                                            // and handle the selected country code
                                          },
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(top: 5, bottom: 4),
                                                child: Text(
                                                  "+1",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtInterBold18.copyWith(
                                                    letterSpacing: getHorizontalSize(1.44),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: getHorizontalSize(40),
                                                margin: getMargin(left: 22, bottom: 2),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      height: getVerticalSize(30),
                                                      child: VerticalDivider(
                                                        width: getHorizontalSize(1),
                                                        thickness: getVerticalSize(1),
                                                        color: ColorConstant.amber300,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant.imgUnitedstates1,
                                                      height: getSize(23),
                                                      width: getSize(23),
                                                      margin: getMargin(left: 16, top: 4, bottom: 3),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(left: 14, top: 0, bottom: 0),
                                        child: Container(
                                          width: getHorizontalSize(136),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "Enter your number",
                                              hintStyle: AppStyle.txtPoppinsLight14.copyWith(
                                                letterSpacing: getHorizontalSize(1.4),
                                                color: Colors.black,
                                              ),
                                              enabledBorder: InputBorder.none, // Remove the underline when the TextField is enabled
                                              focusedBorder: InputBorder.none, // Remove the underline when the TextField is focused
                                            ),
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsLight14.copyWith(
                                              letterSpacing: getHorizontalSize(1.4),
                                            ),
                                            autofocus: false,
                                            keyboardType: TextInputType.number,
                                            inputFormatters: [
                                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')), // Allow only numeric input
                                            ],
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
,
                      Padding(
                          padding: getPadding(left: 35, top: 26, right: 28),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(45),
                                    width: getHorizontalSize(136),
                                    text: "Sign Up",

                                    padding: ButtonPadding.PaddingAll12,
                                    fontStyle: ButtonFontStyle.InterBold18,
                                    onTap: () {
                                      onTapSignup();
                                    }),
                                SizedBox(width: 10,),
                                CustomButton(
                                    height: getVerticalSize(45),
                                    width: getHorizontalSize(136),
                                    text: "Sign In",

                                    padding: ButtonPadding.PaddingAll12,
                                    fontStyle: ButtonFontStyle.InterBold18,
                                    onTap: () {
                                      onTapSignup();
                                    }),
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(295),
                              margin: getMargin(left: 38, top: 46, right: 20),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Alright have an account?",
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(11),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                            letterSpacing:
                                            getHorizontalSize(0.88))),
                                    TextSpan(
                                        text: " Login ",
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(11),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                            getHorizontalSize(0.88))),
                                    TextSpan(

                                        text: "By signing up. you confirm that you and agree\nto our terms of use ",
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(11),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                            letterSpacing:
                                            getHorizontalSize(0.88))),
                                    TextSpan(
                                        text: "privacy policy",
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(11),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                            getHorizontalSize(0.88)))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  void onTapTxtSkip() {
    
  }

  void onTapImgApple() {}

  void onTapImgGoogleone() {}

  void onTapSignup() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }
}

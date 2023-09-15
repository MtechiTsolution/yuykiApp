import 'package:example/app_export.dart';
import 'package:example/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helpers/domain/googleauth/google_auth_helper.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
import '../utils/validation_functions.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/custom_text_form_field.dart';

class SignUp extends StatefulWidget {
 // const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
               // key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                    getPadding(left: 18, top: 0, right: 18, bottom: 13),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtCancel();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 50),
                                      child: Text("Cancel".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular18)))),
                          CustomImageView(
                              svgPath: ImageConstant.imgFrameBlack90002,
                              height: getVerticalSize(86),
                              width: getHorizontalSize(178),
                              margin: getMargin(top: 39)),
                          Container(
                              width: getHorizontalSize(294),
                              margin: getMargin(left: 31, top: 42, right: 32),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "By continuing, you agree to Yuyki’s".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(10),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w300,
                                            letterSpacing:
                                            getHorizontalSize(1.0))),
                                    TextSpan(
                                        text: "Terms of service\n".tr,
                                        style: TextStyle(
                                            color: ColorConstant.indigoA70001,
                                            fontSize: getFontSize(10),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing:
                                            getHorizontalSize(1.0))),
                                    TextSpan(
                                        text: "and acknowledge Yuyki’s".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(10),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w300,
                                            letterSpacing:
                                            getHorizontalSize(1.0))),
                                    TextSpan(
                                        text: " Privacy Policy ".tr,
                                        style: TextStyle(
                                            color: ColorConstant.indigoA70001,
                                            fontSize: getFontSize(10),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing:
                                            getHorizontalSize(1.0))),
                                    TextSpan(
                                        text: ".".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(10),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing:
                                            getHorizontalSize(1.0)))
                                  ]),
                                  textAlign: TextAlign.left)),
                          Padding(
                              padding: getPadding(top: 39),
                              child: Text("Sign Up with Email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold22.copyWith(
                                      letterSpacing: getHorizontalSize(1.76)))),
                          Padding(
                              padding: getPadding(left: 24, top: 24, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(149),
                                        padding: getPadding(
                                            left: 19,
                                            top: 5,
                                            right: 19,
                                            bottom: 5),
                                        decoration: AppDecoration
                                            .txtOutlineBlack9003f
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder6),
                                        child:
                                        CustomTextFormField(
                                           // focusNode: FocusNode(),
                                            autofocus: false,
                                            //controller: controller.emailController,
                                            hintText: "First name".tr,
                                            margin: getMargin(left: 0, top: 0, right: 0),
                                            variant: TextFormFieldVariant.OutlineBlack9003f,

                                            ),
                                        //
                                        // Text("First name".tr,
                                        //     overflow: TextOverflow.ellipsis,
                                        //     textAlign: TextAlign.left,
                                        //     style: AppStyle.txtPoppinsLight14
                                        //         .copyWith(
                                        //         letterSpacing:
                                        //         getHorizontalSize(
                                        //             1.4)))

                                    ),
                                    Container(
                                        width: getHorizontalSize(149),
                                        margin: getMargin(left: 11),
                                        padding: getPadding(
                                            left: 24,
                                            top: 4,
                                            right: 24,
                                            bottom: 4),
                                        decoration: AppDecoration
                                            .txtOutlineBlack9003f
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder6),
                                        child:
                                        CustomTextFormField(
                                          // focusNode: FocusNode(),
                                          autofocus: false,
                                          //controller: controller.emailController,
                                          hintText: "Last Name".tr,
                                          margin: getMargin(left: 0, top: 0, right: 0),
                                          variant: TextFormFieldVariant.OutlineBlack9003f,

                                        ),
                                        // Text("lbl_last_name".tr,
                                        //     overflow: TextOverflow.ellipsis,
                                        //     textAlign: TextAlign.left,
                                        //     style: AppStyle.txtPoppinsLight14
                                        //         .copyWith(
                                        //         letterSpacing:
                                        //         getHorizontalSize(
                                        //             1.4)))

                                    )
                                  ])),

                          Container(
                            margin: EdgeInsets.only(left: 22,right: 22,top: 5),
                            decoration: AppDecoration
                                .txtOutlineBlack9003f
                                .copyWith(
                                borderRadius: BorderRadiusStyle
                                    .txtRoundedBorder6),
                            child: Padding(

                              padding: getPadding(
                                  left: 0,
                                  top: 4,
                                  right: 24,
                                  bottom: 4),
                              child: CustomTextFormField(
                                  focusNode: FocusNode(),
                                 // autofocus: true,
                                  //controller: controller.emailController,
                                  hintText: "Email Address".tr,
                                  margin: getMargin(left: 10, top: 0, right: 24),
                                  variant: TextFormFieldVariant.OutlineBlack9003f,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value, isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 22,right: 22,top: 5),
                            decoration: AppDecoration
                                .txtOutlineBlack9003f
                                .copyWith(
                                borderRadius: BorderRadiusStyle
                                    .txtRoundedBorder6),
                            child: Padding(
                              padding: getPadding(
                                  left: 0,
                                  top: 4,
                                  right: 24,
                                  bottom: 4),
                              child: CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: false,
                                 // controller: controller.passwordController,
                                  hintText: "Password".tr,
                                  margin: getMargin(left: 10, top: 0, right: 24),
                                  variant: TextFormFieldVariant.OutlineBlack9003f,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 22,right: 22,top: 10),
                              // decoration: AppDecoration
                              //     .txtOutlineBlack9003f
                              //     .copyWith(
                              //     borderRadius: BorderRadiusStyle
                              //         .txtRoundedBorder6),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(top: 1),
                                            padding: getPadding(all: 5),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .roundedBorder6),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 13,
                                                          top: 5,
                                                          bottom: 5),
                                                      child: Text(
                                                          "Postcode".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsLight14
                                                              .copyWith(
                                                              letterSpacing:
                                                              getHorizontalSize(
                                                                  1.4)))),
                                                  Spacer(flex: 73),
                                                  SizedBox(
                                                      height:
                                                      getVerticalSize(25),
                                                      child: VerticalDivider(
                                                          width:
                                                          getHorizontalSize(
                                                              1),
                                                          thickness:
                                                          getVerticalSize(
                                                              1),
                                                          color: ColorConstant
                                                              .amber300,
                                                          endIndent:
                                                          getHorizontalSize(
                                                              1))),
                                                  Spacer(flex: 26),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgNext3,
                                                      height:
                                                      getVerticalSize(15),
                                                      width:
                                                      getHorizontalSize(19),
                                                      margin: getMargin(
                                                          top: 4, bottom: 1))
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgUnitedstates1,
                                        height: getSize(33),
                                        width: getSize(33),
                                        alignment: Alignment.topRight,
                                        margin: getMargin(right: 36))
                                  ])),
                          Container(
                            margin: EdgeInsets.only(left: 22,right: 22,top: 5),
                            decoration: AppDecoration
                                .txtOutlineBlack9003f
                                .copyWith(
                                borderRadius: BorderRadiusStyle
                                    .txtRoundedBorder6),
                            child: CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: false,
                               // controller: controller.birthdayController,
                                hintText: "Birthday (optional)".tr,
                                margin: getMargin(left: 10, top: 5, right: 24),
                                variant: TextFormFieldVariant.OutlineBlack9003f,
                                textInputAction: TextInputAction.done),
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapSignUp();
                            },
                            child: CustomButton(
                                height: getVerticalSize(42),
                                text: "Sign Up".tr,
                                margin: getMargin(left: 8, top: 23, right: 8),
                                padding: ButtonPadding.PaddingAll12,
                                fontStyle: ButtonFontStyle.InterBold18),
                          ),

                          GestureDetector(
                              onTap: () {
                                onTapRowgoogleone();
                              },
                              child: Container(
                                  margin: getMargin(left: 8, top: 32, right: 8),
                                  padding: getPadding(
                                      left: 23, top: 10, right: 23, bottom: 10),
                                  decoration: AppDecoration.outlineGray500
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder10),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGoogle1,
                                            height: getSize(22),
                                            width: getSize(22)),
                                        Padding(
                                            padding: getPadding(
                                                left: 42, top: 4, right: 65),
                                            child: Text(
                                                "Continue with Google".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterMedium14
                                                    .copyWith(
                                                    letterSpacing:
                                                    getHorizontalSize(
                                                        1.12))))
                                      ]))),
                          GestureDetector(
                              onTap: () {
                                onTapRowappletwentyo();
                              },
                              child: Container(
                                  margin: getMargin(left: 8, top: 8, right: 8),
                                  padding: getPadding(
                                      left: 23, top: 9, right: 23, bottom: 9),
                                  decoration: AppDecoration.fillBlack900
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder10),
                                  child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgApple21,
                                            height: getSize(22),
                                            width: getSize(22),
                                            margin: getMargin(bottom: 2)),
                                        Padding(
                                            padding: getPadding(
                                                left: 43,
                                                top: 4,
                                                right: 65,
                                                bottom: 2),
                                            child: Text(
                                                "Continue with Iphone".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium14WhiteA700
                                                    .copyWith(
                                                    letterSpacing:
                                                    getHorizontalSize(
                                                        1.12))))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 7),
                              child: Text("Don’t worry ,we won’t post without your permission.".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterLight10.copyWith(
                                      letterSpacing: getHorizontalSize(1.0))))
                        ])))));
  }

  void onTapTxtCancel() {}

  onTapRowgoogleone() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  void onTapRowappletwentyo() {

    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  void onTapSignUp() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

  }
}




// import 'package:flutter/material.dart';
//
//
// // ignore_for_file: must_be_immutable
// abstract class LoginPageScreen extends StatefulWidget {
//   LoginPageScreen({Key? key}) : super(key: key);
//
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return
//
//
//   }
//
//   /// Navigates to the threeScreen when the action is triggered.
//
//   /// When the action is triggered, this function uses the `Get` package to
//   /// push the named route for the threeScreen.
//   onTapTxtCancel() {
//     Get.toNamed(
//       AppRoutes.threeScreen,
//     );
//   }
//
//   /// Performs a Google sign-in and returns a [GoogleUser] object.
//   ///
//   /// If the sign-in is successful, the [onSuccess] callback will be called with
//   /// a TODO comment needed to be modified by you.
//   /// If the sign-in fails, the [onError] callback will be called with the error message.
//   ///
//   /// Throws an exception if the Google sign-in process fails.
//   onTapRowgoogleone() async {
//     await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
//       if (googleUser != null) {
//         //TODO Actions to be performed after signin
//       } else {
//         Get.snackbar('Error', 'user data is empty');
//       }
//     }).catchError((onError) {
//       Get.snackbar('Error', onError.toString());
//     });
//   }
//
//   /// Navigates to the homeFourScreen when the action is triggered.
//
//   /// When the action is triggered, this function uses the `Get` package to
//   /// push the named route for the homeFourScreen.
//   onTapRowappletwentyo() {
//     Get.toNamed(
//       AppRoutes.homeFourScreen,
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../../theme/app_style.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../Serach_screen_menu/Bussiness_profile.dart';

class menubutton extends StatefulWidget {
  //const menubutton({super.key});

  @override
  State<menubutton> createState() => _menubuttonState();
}

class _menubuttonState extends State<menubutton> {
  bool showExtendedMenu = false;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.grey[200], // Light gray color
          borderRadius: BorderRadius.circular(15.0), // Rounded corners
        ),
        child:
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bussines_Profile()));
                      },
                      height: 46,
                      width: 47,
                      variant: IconButtonVariant.OutlineBlack90099,
                      shape: IconButtonShape.CircleBorder23,
                      padding: IconButtonPadding.PaddingAll10,
                      child: CustomImageView(imagePath: ImageConstant.imgGroup144),
                    ),
                    Padding(
                      padding: getPadding(top: 10),
                      child: Text(
                        "Restaurant",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium12,
                      ),
                    ),
                  ],
                ),

                // Second Pair: Shopping
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 46,
                      width: 47,
                      variant: IconButtonVariant.OutlineBlack90099,
                      shape: IconButtonShape.CircleBorder23,
                      padding: IconButtonPadding.PaddingAll10,
                      child: CustomImageView(imagePath: ImageConstant.imgGroup144),
                    ),
                    Padding(
                      padding: getPadding(top: 10),
                      child: Text(
                        "Shopping",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium12,
                      ),
                    ),
                  ],
                ),

                // Third Pair: Active Life
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 46,
                      width: 47,

                      variant: IconButtonVariant.OutlineBlack90099,
                      shape: IconButtonShape.CircleBorder23,
                      padding: IconButtonPadding.PaddingAll10,
                      child: CustomImageView(imagePath: ImageConstant.imgGroup143),
                    ),
                    Padding(
                      padding: getPadding(top: 10),
                      child: Text(
                        "Active Life",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium12,
                      ),
                    ),
                  ],
                ),

                // Fourth Pair: Makeup
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 46,
                      width: 47,

                      variant: IconButtonVariant.OutlineBlack90099,
                      shape: IconButtonShape.CircleBorder23,
                      padding: IconButtonPadding.PaddingAll10,
                      child: CustomImageView(imagePath: ImageConstant.imgGroup142),
                    ),
                    Padding(
                      padding: getPadding(top: 10),
                      child: Text(
                        "Makeup",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
               SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // First Pair: Nightlife
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 46,
                      width: 48,
                      variant: IconButtonVariant.OutlineBlack90099,
                      shape: IconButtonShape.CircleBorder23,
                      padding: IconButtonPadding.PaddingAll13,
                      child: CustomImageView(imagePath: ImageConstant.imgGroup141),
                    ),
                    Padding(
                      padding: getPadding(top: 9),
                      child: Text(
                        "Nightlife",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsMedium12,
                      ),
                    ),
                  ],
                ),

                // Second Pair: Automotive
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 46,
                      width: 47,

                      variant: IconButtonVariant.OutlineBlack90099,
                      shape: IconButtonShape.CircleBorder23,
                      padding: IconButtonPadding.PaddingAll10,
                      child: CustomImageView(imagePath: ImageConstant.imgGroup140),
                    ),
                    Padding(
                      padding: getPadding(top: 9),
                      child: Text(
                        "Automotive",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsMedium12,
                      ),
                    ),
                  ],
                ),

                // Third Pair: Home Services
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 46,
                      width: 47,

                      variant: IconButtonVariant.OutlineBlack90099,
                      shape: IconButtonShape.CircleBorder23,
                      padding: IconButtonPadding.PaddingAll10,
                      child: CustomImageView(imagePath: ImageConstant.imgGroup139),
                    ),
                    Padding(
                      padding: getPadding(top: 9),
                      child: Text(
                        "Home Services",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsMedium12,
                      ),
                    ),
                  ],
                ),

                // Fourth Pair: More
                if (showExtendedMenu)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 46,
                        width: 47,

                        variant: IconButtonVariant.OutlineBlack90099,
                        shape: IconButtonShape.CircleBorder23,
                        padding: IconButtonPadding.PaddingAll10,
                        child: CustomImageView(imagePath: ImageConstant.imgGroup142),
                      ),
                      Padding(
                        padding: getPadding(top: 10),
                        child: Text(
                          "Car Wash",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium12,
                        ),
                      ),
                    ],
                  ),
                if (!showExtendedMenu)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        onTap: () {
                          setState(() {
                            showExtendedMenu = !showExtendedMenu;
                          });
                        },
                        height: 46,
                        width: 47,
                        variant: IconButtonVariant.OutlineBlack90099,
                        shape: IconButtonShape.CircleBorder23,
                        padding: IconButtonPadding.PaddingAll10,
                        child: CustomImageView(imagePath: ImageConstant.imgGroup138),
                      ),
                      Padding(
                        padding: getPadding(top: 9),
                        child: Text(
                          "More",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsMedium12,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            if (showExtendedMenu)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 46,
                        width: 47,
                        variant: IconButtonVariant.OutlineBlack90099,
                        shape: IconButtonShape.CircleBorder23,
                        padding: IconButtonPadding.PaddingAll10,
                        child: CustomImageView(imagePath: ImageConstant.imgGroup144),
                      ),
                      Padding(
                        padding: getPadding(top: 10),
                        child: Text(
                          "Test1",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium12,
                        ),
                      ),
                    ],
                  ),

                  // Second Pair: Shopping
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 46,
                        width: 47,
                        variant: IconButtonVariant.OutlineBlack90099,
                        shape: IconButtonShape.CircleBorder23,
                        padding: IconButtonPadding.PaddingAll10,
                        child: CustomImageView(imagePath: ImageConstant.imgGroup144),
                      ),
                      Padding(
                        padding: getPadding(top: 10),
                        child: Text(
                          "Test2",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium12,
                        ),
                      ),
                    ],
                  ),

                  // Third Pair: Active Life
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 46,
                        width: 47,

                        variant: IconButtonVariant.OutlineBlack90099,
                        shape: IconButtonShape.CircleBorder23,
                        padding: IconButtonPadding.PaddingAll10,
                        child: CustomImageView(imagePath: ImageConstant.imgGroup143),
                      ),
                      Padding(
                        padding: getPadding(top: 10),
                        child: Text(
                          "Test3",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium12,
                        ),
                      ),
                    ],
                  ),

                  // test 4 Pair: Makeup
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 46,
                        width: 47,

                        variant: IconButtonVariant.OutlineBlack90099,
                        shape: IconButtonShape.CircleBorder23,
                        padding: IconButtonPadding.PaddingAll10,
                        child: CustomImageView(imagePath: ImageConstant.imgGroup142),
                      ),
                      Padding(
                        padding: getPadding(top: 10),
                        child: Text(
                          "Test4",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
    );

  }
}


//
//
//
// import 'package:flutter/material.dart';
//
// // Your other imports...
//
// class menubutton extends StatefulWidget {
//   @override
//   State<menubutton> createState() => _menubuttonState();
// }
//
// class _menubuttonState extends State<menubutton> {
//   bool showExtendedMenu = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Your existing menu items for the first row...
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Your existing menu items for the second row...
//               if (showExtendedMenu)
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CustomIconButton(
//                       height: 46,
//                       width: 47,
//
//                       variant: IconButtonVariant.OutlineBlack90099,
//                       shape: IconButtonShape.CircleBorder23,
//                       padding: IconButtonPadding.PaddingAll10,
//                       child: CustomImageView(imagePath: ImageConstant.imgGroup142),
//                     ),
//                     Padding(
//                       padding: getPadding(top: 10),
//                       child: Text(
//                         "Test4",
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsMedium12,
//                       ),
//                     ),
//                   ],
//                 ),
//               if (!showExtendedMenu)
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CustomIconButton(
//                       onTap: () {
//                         setState(() {
//                           showExtendedMenu = !showExtendedMenu;
//                         });
//                       },
//                       height: 46,
//                       width: 47,
//                       variant: IconButtonVariant.OutlineBlack90099,
//                       shape: IconButtonShape.CircleBorder23,
//                       padding: IconButtonPadding.PaddingAll10,
//                       child: CustomImageView(imagePath: ImageConstant.imgGroup138),
//                     ),
//                     Padding(
//                       padding: getPadding(top: 9),
//                       child: Text(
//                         "More",
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.center,
//                         style: AppStyle.txtPoppinsMedium12,
//                       ),
//                     ),
//                   ],
//                 ),
//             ],
//           ),
//           if (showExtendedMenu)
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Your existing menu items for the extended menu...
//               ],
//             ),
//         ],
//       ),
//     );
//   }
// }

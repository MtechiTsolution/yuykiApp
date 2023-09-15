// import 'package:example/widgets/app_bar/custom_app_bar.dart';
//
// import 'main.dart';
// import 'package:flutter/material.dart';
//
// class test extends StatefulWidget {
//   const test({super.key});
//
//   @override
//   State<test> createState() => _testState();
// }
//
// class _testState extends State<test> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       Container(
//         margin: EdgeInsets.only(top: 30),
//         child: Column(children: [
//
//           Positioned.fill(
//             top: getVerticalSize(50),
//             child: Expanded(
//               child: ListView(
//                 padding: EdgeInsets.zero,
//                 children: [
//                   searchBar(),
//                   Container(
//                     height: getVerticalSize(174),
//                     width: double.maxFinite,
//                     margin: getMargin(top: 8),
//                     child: Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         PageView.builder(
//                           controller: _pageController,
//                           scrollDirection: Axis.horizontal,
//                           itemCount: imagePaths.length,
//                           onPageChanged: (index) {
//                             setState(() {
//                               currentIndex = index;
//                             });
//                           },
//                           itemBuilder: (BuildContext context, int index) {
//                             return CustomImageView(
//                               imagePath: imagePaths[index],
//                               height: getVerticalSize(174),
//                               width: getHorizontalSize(393),
//                               alignment: Alignment.center,
//                             );
//                           },
//                         ),
//                         Align(
//                           alignment: Alignment.center,
//                           child: Padding(
//                             padding: getPadding(left: 18, right: 17),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   width: getHorizontalSize(138),
//                                   child: Text(
//                                     enUs["msg_les_meilleurs_burgers"]!,
//                                     maxLines: null,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.txtInterBold18Amber300,
//                                   ),
//                                 ),
//                                 CustomButton(
//                                   height: getVerticalSize(34),
//                                   width: getHorizontalSize(117),
//                                   text: enUs["lbl_outdoor_enjoy"]!,
//                                   margin: getMargin(top: 67),
//                                   variant: ButtonVariant.FillAmber300,
//                                   shape: ButtonShape.RoundedBorder5,
//                                   fontStyle: ButtonFontStyle.InterBold14,
//                                   alignment: Alignment.centerRight,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   menubutton(),
//                   Video_review(),
//                   Return_home()
//                   // Add more scrollable content widgets here
//                 ],
//               ),
//             ),
//           ),
//         ],),
//       ),
//       Container(
//
//         child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               CustomAppBar(
//                   height: getVerticalSize(50),
//                   leadingWidth: 74,
//                   leading: GestureDetector(
//                     child: AppbarImage(
//                         height: getVerticalSize(30),
//                         width: getHorizontalSize(22),
//                         svgPath: ImageConstant.imgFrameAmber300,
//                         margin: getMargin(left: 52, top: 10)),
//                   ),
//                   actions: [
//                     AppbarImage(
//                         onTap: _toggleMenu,
//                         height: getSize(30),
//                         width: getSize(30),
//                         svgPath: ImageConstant.imgRewind,
//                         margin: getMargin(left: 49, right: 49))
//                   ]),
//               if (_isMenuOpen)
//                 Positioned(
//                   top: getVerticalSize(50),
//                   left: 0,
//                   right: 0,
//                   child: Card(
//                     color: Colors.yellow,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             // Handle the first menu item click
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               "First Clickable Text",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             // Handle the second menu item click
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               "Second Clickable Text",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//
//               Padding(
//                   padding: getPadding(left: 14, top: 2, right: 8),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                             padding: getPadding(top: 0, bottom: 3),
//                             child: Text("Current Location",
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtInterMedium12.copyWith(
//                                     letterSpacing:
//                                     getHorizontalSize(0.6)))),
//                         CustomImageView(
//                             svgPath: ImageConstant.imgLocation,
//                             height: getSize(10),
//                             width: getSize(10),
//                             radius: BorderRadius.circular(
//                                 getHorizontalSize(2)),
//                             margin: getMargin(left: 3, bottom: 1),
//                             onTap: () {
//                               // onTapImgLocation();
//                             }),
//                         Spacer(),
//                         Padding(
//                             padding: getPadding(top: 0),
//                             child: Text("post video reviews",
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtInterMedium12.copyWith(
//                                     letterSpacing:
//                                     getHorizontalSize(0.6))))
//                       ]))
//             ]),
//       ),
//     ],);
//   }
// }

// import 'package:flutter/material.dart';
//
// import '../../../localization/en_us/en_us_translations.dart';
// import '../../../utils/image_constant.dart';
// import '../../../utils/size_utils.dart';
// import '../../../widgets/app_bar/appbar_image.dart';
// import '../../../widgets/app_bar/appbar_subtitle_2.dart';
// import '../../../widgets/app_bar/custom_app_bar.dart';
//
// class Activities extends StatefulWidget {
//   @override
//   State<Activities> createState() => _ActivitiesState();
// }
//
// class _ActivitiesState extends State<Activities> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         height: getVerticalSize(100),
//         leadingWidth: 47,
//         leading: AppbarImage(
//           height: getSize(10),
//           width: getSize(10),
//           imagePath: ImageConstant.imgBack13,
//           margin: getMargin(left: 24, top: 10, bottom: 40),
//           onTap: () {
//             // onTapBackthirteen();
//           },
//         ),
//         centerTitle: true,
//         title: AppbarSubtitle2(
//           text: "Activity",
//           margin: getMargin(top: 10, bottom: 40),
//         ),
//         styleType: Style.bgShadowBlack90035,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.info, size: 24, color: Colors.black),
//                 SizedBox(width: 8),
//                 Text(
//                   'All Notification',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Spacer(), // To push the next element to the center of the screen
//           GestureDetector(
//             onTap: () {
//               // Handle refresh action
//             },
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.refresh, size: 24, color: Colors.green),
//                 SizedBox(width: 8),
//                 Text(
//                   'Refresh',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.green,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Spacer(),
//         ],
//       ),
//     );
//   }
// }


import '../../../localization/en_us/en_us_translations.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';

import 'package:flutter/material.dart';

class Reservation extends StatefulWidget {
  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {




  void _handleRefresh() {
    // You can put your refresh logic here

    // Call setState to rebuild the widget tree and refresh the screen
    setState(() {
      // Update any necessary variables or data
    });
  }

  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Information'),
          content: Text('This is a notification information dialog.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getVerticalSize(100),
        leadingWidth: 47,
        leading: AppbarImage(
          height: getSize(10),
          width: getSize(10),
          imagePath: ImageConstant.imgBack13,
          margin: getMargin(left: 24, top: 10, bottom: 40),
          onTap: () {
            Navigator.of(context).pop();
            // onTapBackthirteen();
          },
        ),
        centerTitle: true,
        title: AppbarSubtitle2(
          text: "Reservation",
          margin: getMargin(top: 10, bottom: 40),
        ),
        styleType: Style.bgShadowBlack90035,
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _showInfoDialog();
                  },
                  child: Icon(Icons.table_view_sharp, size: 24, color: Colors.amber),
                ),
                SizedBox(width: 8),
                Text(
                  'Upcoming',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(height: 8), // Add some space between the rows
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'You have not any upcoming Reservation,lets booking Now',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey, // You can adjust the color
              ),
            ),
          ),
          SizedBox(height: 18),
          GestureDetector(

            onTap: _handleRefresh,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.table_bar_outlined, size: 24, color: Colors.amber),
                SizedBox(width: 8),
                Text(
                  'Book a Table',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          Spacer(),

        ],
      ),
    );
  }
}






import '../../../localization/en_us/en_us_translations.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';

import 'package:flutter/material.dart';

class CheckIns extends StatefulWidget {
  @override
  State<CheckIns> createState() => _CheckInsState();
}

class _CheckInsState extends State<CheckIns> {




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
          text: "Check Ins",
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    _showInfoDialog();
                  },
                  child: Icon(Icons.check_circle, size: 24, color: Colors.amber),
                ),
                SizedBox(width: 8),
                Text(
                  'Check In',
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

              'Turn on location service and check latest My Check In',
              textAlign: TextAlign.center,
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
                Icon(Icons.refresh, size: 24, color: Colors.amber),
                SizedBox(width: 8),
                Text(
                  'Refresh',
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





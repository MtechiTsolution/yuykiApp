import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package

import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';

class MyCollection extends StatefulWidget {
  @override
  State<MyCollection> createState() => _MyCollectionState();
}

class _MyCollectionState extends State<MyCollection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "My Collections",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold14.copyWith(
                letterSpacing: getHorizontalSize(1.8),
              ),
            ),
          ),
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildCard(
                icon: Icons.book,
                text: '100',
                title: 'Beautiful Sunset',
                description:
                'Enjoy the breathtaking view of a stunning sunset over the horizon.',
                svgImagePath: ImageConstant.imgRectangle153,
              ),
              buildCard(
                icon: Icons.book,
                text: '100',
                title: 'Majestic Mountains',
                description:
                'Immerse yourself in the grandeur of towering mountains and their tranquil surroundings.',
                svgImagePath: ImageConstant.imgRectangle19,
              ),
              buildCard(
                icon: Icons.book,
                text: '100',
                title: 'Serene Beach',
                description:
                'Unwind on the pristine shores of a serene beach, where gentle waves and soft sands create the perfect oasis.',
                svgImagePath: ImageConstant.imgRectangle338,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget buildCard({
  required IconData icon,
  required String text,
  required String title,
  required String description,
  required String svgImagePath,
}) {
  return Container(
    width: 150, // Adjust the width as per your preference
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20), // Add the corner radius here
    ),
    child: Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                // child: SvgPicture.asset( // Use the SvgPicture.asset widget
                //   svgImagePath,
                //   fit: BoxFit.cover,
                // ),

                child: Image.asset(
                  svgImagePath, // Replace with the path to your PNG or JPEG image
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icon,
                    color: ColorConstant.amber300,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 150,
                  color: Colors.black54,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';

import '../../../theme/app_style.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/size_utils.dart';

class Collectionimag extends StatefulWidget {
  @override
  State<Collectionimag> createState() => _CollectionimagState();
}

class _CollectionimagState extends State<Collectionimag> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Recent Collections",overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold14
                    .copyWith(letterSpacing: getHorizontalSize(1.8))),
            )),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildCard(
                icon: Icons.book,
                text: '100',
                title: 'Beautiful Sunset',
                description: 'Enjoy the breathtaking view of a stunning sunset over the horizon.',
                imagePath: 'assets/images/img_rectangle141.png',
              ),
              buildCard(
                icon: Icons.book,
                text: '100',
                title: 'Majestic Mountains',
                description: 'Immerse yourself in the grandeur of towering mountains and their tranquil surroundings.',
                imagePath: 'assets/images/img_rectangle141_2.png',
              ),
              buildCard(
                icon: Icons.book,
                text: '100',
                title: 'Serene Beach',
                description: 'Unwind on the pristine shores of a serene beach, where gentle waves and soft sands create the perfect oasis.',
                imagePath: 'assets/images/img_rectangle146.png',
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
  required String imagePath,
}) {
  return Container(
    width: 200, // Adjust the width as per your preference
    margin: EdgeInsets.all(10),
    child: Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 200,
            color: Colors.black54,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      color: ColorConstant.amber300,
                    ),
                    Spacer(),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.amber300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

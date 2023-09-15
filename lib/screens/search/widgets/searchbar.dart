import 'package:flutter/material.dart';

import '../../../utils/color_constant.dart';

class searchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 46,
      margin: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
      decoration: BoxDecoration(

        color: Colors.white,
        border: Border.all(color: ColorConstant.amber300,),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for burgers, delivery, barber',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

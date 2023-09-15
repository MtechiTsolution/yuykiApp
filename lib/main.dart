
import 'package:example/app_export.dart';
import 'package:example/home.dart';
import 'package:example/screens/Intro_screen/IntroScreen.dart';
import 'package:example/screens/search/return_home.dart';
import 'package:example/screens/search/widgets/search1.dart';
import 'package:example/screens/shareLocation.dart';
import 'package:example/theme/app_decoration.dart';
import 'package:example/theme/app_style.dart';
import 'package:example/utils/color_constant.dart';
import 'package:example/utils/image_constant.dart';
import 'package:example/utils/my_color.dart';
import 'package:example/widgets/custom_button.dart';
import 'package:example/widgets/custom_image_view.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:example/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';

import 'helpers/ColorsSys.dart';
import 'utils/Strings.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/search1': (context) => Search1(),
    },
    home: IntroScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState  createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
        initialPage: 0
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      IntroScreen();

  }


}



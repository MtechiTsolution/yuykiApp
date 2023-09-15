
import 'dart:async';

import 'package:example/screens/search/widgets/searchbar.dart';
import 'package:example/screens/search/widgets/video_view.dart';
import 'package:flutter/material.dart';
import 'package:we_slide/we_slide.dart';

// Import your custom widgets here
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_style.dart';
import '../../../utils/color.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_search_view.dart';
import '../Serach_screen_menu/Bussines_profile_reviews_videos.dart';
import 'bottom_dialog.dart';
import 'card_return_Home.dart';
import 'menuButtons.dart';

class Search1 extends StatefulWidget {
  @override
  State<Search1> createState() => _Search1State();
}

class _Search1State extends State<Search1> {
  List<String> imagePaths = [
    ImageConstant.imgRectangle19,
    ImageConstant.imgRectangle43,
    ImageConstant.imgRectangle19,
    ImageConstant.imgRectangle43,
  ];
  late PageController _pageController = PageController(initialPage: 0);

  int currentIndex = 0;
  //late PageController _pageController;
  Timer? imageTimer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    startImageTimer(); // Call the function to start automatic scrolling
  }



  @override
  void dispose() {
    _pageController.dispose();
    imageTimer?.cancel();
    super.dispose();
  }
  void startImageTimer() {
    imageTimer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (_pageController.hasClients) {
        int nextPage = (currentIndex + 1) % imagePaths.length;
        setState(() {
          currentIndex = nextPage;
        });
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    });

  }

  bool _isMenuOpen = false;

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
      print("click on action");
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            top: 100.0,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                //search bar top of screen
                searchBar(),
                // Add more scrollable content widgets here
                Container(
                  height: MediaQuery.of(context).size.height*0.24,
                  width: double.maxFinite,
                  margin: getMargin(top: 5),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        child: PageView.builder(
                          controller: _pageController,
                          scrollDirection: Axis.horizontal,
                          itemCount: imagePaths.length,
                          onPageChanged: (index) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return CustomImageView(
                              imagePath: imagePaths[index],
                              height: MediaQuery.of(context).size.height*0.22,
                              width: getHorizontalSize(393),
                              alignment: Alignment.center,
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(left: 18, right: 17),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: getHorizontalSize(138),
                                child: Text(
                                  enUs["msg_les_meilleurs_burgers"]!,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold18Amber300,
                                ),
                              ),
                              CustomButton(
                                height: getVerticalSize(34),
                                width: getHorizontalSize(117),
                                text: enUs["lbl_outdoor_enjoy"]!,
                                margin: getMargin(top: 67),
                                variant: ButtonVariant.FillAmber300,
                                shape: ButtonShape.RoundedBorder5,
                                fontStyle: ButtonFontStyle.InterBold14,
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // menu button like Restaurants,shopping
                menubutton(),
              //  Video_review(),
                Bussines_profile_video_reviews(),
                //return to home page
                Return_home(),
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(

              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomAppBar(
                        height: getVerticalSize(80),
                        leadingWidth: 150,
                        leading: GestureDetector(
                          onTap: (){
                            print("Click on location");
                          } ,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AppbarImage(
                                  onTap: () {
                                    _showCustomBottomDialog(context); // Call the function to show the custom bottom dialog
                                  },
                                  height: getVerticalSize(25),
                                  width: getHorizontalSize(25),
                                  svgPath: ImageConstant.imgFrameAmber300,
                                  margin: getMargin(left: 0, top: 5)),
                              SizedBox(height: 4), // Added SizedBox for spacing
                              Text(
                                "Set Location",
                                style: AppStyle
                                    .txtInterMedium12
                                    .copyWith(
                                    letterSpacing:
                                    getHorizontalSize(
                                        0.8), fontSize: 12) // Adjust font size as needed
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppbarImage(
                                  onTap: _toggleMenu,
                                  height: getSize(25),
                                  width: getSize(25),
                                  svgPath: ImageConstant.imgRewind,
                                  margin: getMargin(left: 49, right: 49,top: 5)),
                              SizedBox(height: 4), // Added SizedBox for spacing
                              Text(
                                "Post video reviews",
                                style: AppStyle
                                    .txtInterMedium12
                                    .copyWith(
                                    letterSpacing:
                                    getHorizontalSize(
                                        0.8), fontSize: 12), // Adjust font size as needed
                              ),
                            ],
                          )
                        ]),


                  ]),
            ),

          ),


          // Top menu dialog for Post video review

          if (_isMenuOpen)
            Positioned(
              top: getVerticalSize(70),
              left: 165,

              right: 15,
              child:  Container(
              width: 260, // Updated width value to 250
              child: Card(
                color: CustomColors.Yellowlight,
                child: Column( // Using Row instead of Column to display items horizontally
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        // Handle the first menu item click
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.video_library), // Video icon
                            SizedBox(width: 4), // Adding a small space between icon and text
                            Text(
                              "First Clickable Text",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle the second menu item click
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.shopping_cart), // Shopping icon
                            SizedBox(width: 4), // Adding a small space between icon and text
                            Text(
                              "Second Clickable Text",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ),

        ],
      ),
    );
  }
}


// Bottom dialog for set location
void _showCustomBottomDialog(BuildContext context) {

  double screenHeight = MediaQuery.of(context).size.height;
  double dialogHeight = screenHeight * 1; // 80% of the screen height
  TextEditingController _searchController = TextEditingController();
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: ColorConstant.amber300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6.0), // Adjust this value as needed
            topRight: Radius.circular(6.0), // Adjust this value as needed
          ),
        ),
        height: dialogHeight-100,
        padding: EdgeInsets.all(16.0),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: CustomImageView(
                  svgPath: ImageConstant.imgClose,
                  height: getVerticalSize(20),
                  width: getHorizontalSize(20),
                  alignment: Alignment.centerRight,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 68,
                ),
                child: Text(
                  enUs["msg_choose_my_location"]!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold22.copyWith(
                    letterSpacing: getHorizontalSize(
                      1.1,
                    ),
                  ),
                ),
              ),

          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Perform search action here
                    // You can access the search query using _searchController.text
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search places',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                  },
                ),

              ],
            ),
          ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 33,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFrameBlack90023x16,
                      color: Colors.white,
                      height: getVerticalSize(
                        23,
                      ),
                      width: getHorizontalSize(
                        16,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                        bottom: 2,
                      ),
                      child: Text(
                        enUs["msg_current_location2"]!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.7,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    top: 30,
                  ),
                  child: Text(
                    enUs["msg_no_recent_search"]!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium18Black900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}




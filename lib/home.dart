import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:example/screens/Menu/Main_Menu.dart';
import 'package:example/screens/Profile/Profile.dart';
import 'package:example/screens/collection/collections.dart';
import 'package:example/screens/search/widgets/search1.dart';
import 'package:example/utils/color_constant.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    SearchScreen(),
    ProfileScreen(),
    BookmarkScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.search, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.bookmark, size: 30),
          Icon(Icons.menu, size: 30),
        ],
        color: ColorConstant.amber300,
        buttonBackgroundColor: ColorConstant.amber300,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
          color: Colors.white,
          child: Search1()) ;


  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      color: Colors.blueAccent,
      child:
      Profile()

    );
  }
}

class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Container(
        child: Collections()
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Main_Menu()
    );
  }
}




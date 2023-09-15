import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home.dart';
import '../LoginScreen.dart';
import '../shareLocation.dart';
import 'First_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // Track whether the intro screens have been shown before
  bool _showIntro = true;

  @override
  void initState() {
    super.initState();
    _checkIfFirstTime();
  }

  Future<void> _checkIfFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _showIntro = prefs.getBool('showIntro') ?? true;
    });
  }

  // Function to set the 'showIntro' flag to false once intro screens are shown
  Future<void> _setIntroShown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('showIntro', false);
  }

  @override
  Widget build(BuildContext context) {
    if (_showIntro) {
      return Scaffold(
        body: PageView(
          children: [
            // Page 1
            Container(
              color: Colors.white,
              child: Center(
                child: First_Inntro()
              ),
            ),
            // Page 2
            Container(
              color: Colors.white,
              child: Center(
                child: Sharelocation()
              ),
            ),
            // Page 3
            Container(
              color: Colors.white,
              child: Center(
                child: LoginScreen()
              ),
            ),
          ],
        ),
        // Add a button to move to the next page or dismiss the intro screens

      );
    } else {
      // If intro screens were shown before, navigate to the main screen directly
      return Scaffold(
        body: Center(
          child: HomePage(),
        ),
      );
    }
  }
}

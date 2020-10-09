import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:open_wherether/ui/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Column(
          children: [
            _buildTextAppName(),
            _buildImageLogo(),
            _buildButtonExplore(context),
          ],
        ),
      ),
    );
  }

  _buildTextAppName() => Expanded(
    child: Container(
      child: Center(
        child: Text(
          "OpenWeather",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    ),
  );

  _buildImageLogo() => Container(
    child: Image.asset(
      'assets/images/openweathermap.png',
      width: 200.0,
      height: 200.0,
      fit: BoxFit.fill,
    ),
  );

  _buildButtonExplore(BuildContext context) => Expanded(
    child: Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 32.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: _buildContentButton(context),
        ),
      ),
    ),
  );

  _buildContentButton(BuildContext context) => RaisedButton(
    onPressed: () => _navigateToHomeScreen(context),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.0),
    ),
    child: Padding(
      padding: EdgeInsets.only(
        left: 32.0,
        top: 12.0,
        right: 32.0,
        bottom: 12.0,
      ),
      child: Text(
        "EXPLORE",
        style: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );


  void _navigateToHomeScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen())
    );
  }
}

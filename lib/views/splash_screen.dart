import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app_api/views/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage(
                "assets/images/logo.png",
              ),
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width * 1,
            ),
          ),
        ],
      ),
    );
  }
}

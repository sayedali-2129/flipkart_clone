import 'dart:async';

import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/utils/image_constant/image_constant.dart';
import 'package:flipkart_clone/view/bottom_navigation/bottom_navigation.dart';

import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BarBottomnavigation(),
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.mainBgBlue,
      body: Center(
        child: Image.asset(
          ConstantImage.flipkartLogo,
          height: 70,
          width: 70,
        ),
      ),
    );
  }
}

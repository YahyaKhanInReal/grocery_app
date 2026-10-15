import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/App_Starting_Screens/on_boarding.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder:(context) => OnBoardScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child:Image.asset(AppAssets.splashScreenImage,height: 68.60, width: 267.41,) ,
      ),
    );
  }
}

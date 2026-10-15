import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/Auth/login_screen.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';
import 'package:grocery_app/Widgets/custom_button.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.onBoardScreenImage,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,),
          Positioned(
            top: 550,
            left: 80,
            child: Text("Welcome \n to our store",style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color:AppColors.secondaryColor,
            ),
            textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 685,
            left: 68,
            child: Text("Get your Groceries in as fast as one hour",style: TextStyle(
              color: AppColors.silverColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            ),
          ),
          Positioned(
              top: 730,
              left: 45,
              child: CustomButton("Get Started", (){
                Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
              }))
        ],
      ),
    );
  }
}

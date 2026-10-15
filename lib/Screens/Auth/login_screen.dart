import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/Auth/signup_screen.dart';
import 'package:grocery_app/Screens/Home/bottom_bar.dart';
import 'package:grocery_app/Screens/Home/home_screen.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';
import 'package:grocery_app/Widgets/custom_button.dart';
import 'package:grocery_app/Widgets/custom_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120),
            Align(
              alignment: Alignment.center,
              child: Image.asset(AppAssets.carrotImage, width: 47, height: 55),
            ),
            SizedBox(height: 90),
            Text(
              "Login",
              style: TextStyle(
                color: AppColors.darkColor,
                fontSize: 26,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Enter your email and password",
              style: TextStyle(
                color: AppColors.greyColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 30,),
            Text("Email",style: TextStyle(
              color: AppColors.greyColor,
              fontWeight: FontWeight.w900,
              fontSize: 16,
            ),),
            CustomInputField(hintText: "yahya@gmail.com",),
            SizedBox(height: 30,),
            Text("Password",style: TextStyle(
              color: AppColors.greyColor,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),),
            CustomInputField(
              hintText: "********",
              suffixIcon: Icon(Icons.visibility_off),
            ),
            SizedBox(height: 15,),
            Align(
                alignment: AlignmentGeometry.centerEnd,
                child: Text("Forgot Password?")),
            SizedBox(height: 20,),
            Align(
                alignment: Alignment.center,
                child: CustomButton("Login", () {
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => BottomBarScreen()));
                })),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(
                  color: AppColors.darkColor,
                  fontWeight: FontWeight.w900
                ),),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> SignupScreen())
                    );
                  },
                  child: Text(
                    "Signup",
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

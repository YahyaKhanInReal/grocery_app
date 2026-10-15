import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/Auth/login_screen.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';
import 'package:grocery_app/Widgets/custom_button.dart';
import 'package:grocery_app/Widgets/custom_input_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            Align(
                alignment: Alignment.center,
                child: Image.asset(AppAssets.carrotImage , width: 47 , height: 55,)),
            SizedBox(height: 60,),
            Text("Sign Up",style: TextStyle(
              color: AppColors.darkColor,
              fontWeight: FontWeight.w900,
              fontSize: 26,
            ),),
            SizedBox(height: 10,),
            Text("Enter your Credentials to continue",style: TextStyle(
              color: AppColors.greyColor,
              fontSize: 16
            ),),
            SizedBox(height: 25,),
            Text("Username",style: TextStyle(
              color: AppColors.greyColor,
              fontSize: 16,
              fontWeight: FontWeight.w900
            ),),
            CustomInputField(hintText: "Yahya Khan"),
            SizedBox(height: 30,),
            Text("Email",style: TextStyle(
                color: AppColors.greyColor,
                fontSize: 16,
                fontWeight: FontWeight.w900
            ),),
            CustomInputField(hintText: "yahyakhan@gmail.com",suffixIcon: Icon(
                Icons.check,
              color: AppColors.primaryColor,
            ),),
            SizedBox(height: 30,),
            Text("Password",style: TextStyle(
                color: AppColors.greyColor,
                fontSize: 16,
                fontWeight: FontWeight.w900
            ),),
            CustomInputField(hintText: "*********",suffixIcon: Icon(
              Icons.visibility_off_outlined
            ),),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("By Continuing you agree to our",style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),),
                TextButton(onPressed: (){}, child: Text("Terms of Service",style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),)),
              ],
            ),
            Row(
              children: [
                Text("and",style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),),
                TextButton(onPressed: (){}, child: Text("Privacy Policy" , style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),))
              ],
            ),
            SizedBox(height: 20,),
            Align(
                alignment: Alignment.center,
                child: CustomButton("Sign Up", (){})),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",style: TextStyle(
                  color: AppColors.darkColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 14
                ),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen()));
                }, child: Text("Login",style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 14
                ),))
              ],
            )
          ],
        ),
      ),
    );
  }
}

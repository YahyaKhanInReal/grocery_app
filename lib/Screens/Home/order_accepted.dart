import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';
import 'package:grocery_app/Widgets/custom_button.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: .center,
          child: Column(
            mainAxisAlignment: .end,
            crossAxisAlignment: .center,
            children: [
              Image.asset(AppAssets.orderAcceptedImage,width: 270,height: 240,),
              SizedBox(height: 20,),
              Text("Your Order has been \n Accepted",textAlign: .center,
              style: TextStyle(
                color: AppColors.darkColor,
                fontSize: 28,
                fontWeight: FontWeight.w900
              ),),
              SizedBox(height: 10,),
              Text("Your items has been placed and is on \n it's way to being processed",
              textAlign: .center,style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w800
                ),),
              SizedBox(height: 180,),
              CustomButton("Track Order", (){}),
              SizedBox(height: 20,),
              TextButton(onPressed: (){}, child: Text("Back to Home",style: TextStyle(
                color: AppColors.darkColor,
                fontSize: 18,
                fontWeight: FontWeight.w900
              ),)),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}

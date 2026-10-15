import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomButton(this.buttonText, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 67,
      width: 370,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19)
          )
        ),
          onPressed: onPressed,
          child: Text(buttonText ,style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),),),
    );
  }
}

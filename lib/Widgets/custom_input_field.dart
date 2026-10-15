import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_colors.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomInputField( {super.key, required this.hintText, this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text(hintText,style: TextStyle(
          color: AppColors.darkColor,
          fontWeight: FontWeight.w700,
          fontSize: 18
        ),),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}

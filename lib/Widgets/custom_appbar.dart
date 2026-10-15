import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final Widget? icon;
  const CustomAppBar({super.key, this.title, this.leading, this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffFFFFFF),
      title: Text(title.toString(),style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),),
      centerTitle: true,
      leading: leading,
      actions: [
        ?icon,
      ],
    );
  }
}
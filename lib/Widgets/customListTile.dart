import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget leading;
  final String title;
  // final Widget trailing;
  const CustomListTile({super.key, required this.leading, required this.title, });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: .all(2),
      // horizontalTitleGap: 5,
      leading:leading ,
      title: Text(title,style: TextStyle(
        color: Color(0xff272727),
        fontSize: 16,
        fontWeight: FontWeight.w600
      ),),
      trailing: Icon(Icons.arrow_forward_ios_outlined,size: 18,),
    );
  }
}

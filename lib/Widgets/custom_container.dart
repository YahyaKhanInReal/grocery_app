import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final double price;


  const CustomContainer({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      height: 248,
      decoration: BoxDecoration(
        borderRadius: .circular(15),
        border: Border.all(width: 0.4, color: AppColors.greyColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Align(
              alignment: AlignmentGeometry.center,
              child: Image.asset(image, width: 89, height: 79),
            ),
            SizedBox(height: 15),
            Text(
              title,
              style: TextStyle(
                color: AppColors.darkColor,
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
            Text(
              subTitle,
              textAlign: .start,
              style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("\$$price",style: TextStyle(
                  color: AppColors.darkColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 16
                ),),
                FloatingActionButton.small(
                  onPressed: () {},
                  backgroundColor: AppColors.primaryColor,
                  elevation: 0,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';
import 'package:grocery_app/Widgets/custom_button.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: .circular(16),
                color: Color(0xffF2F3F2),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    AppAssets.appleImage,
                    width: double.infinity,
                    height: 340,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back_ios)),
                        Icon(Icons.ios_share_outlined),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              dense: true,
              title: Text(
                "Natural Red Apple",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              subtitle: Text(
                "1kg, Price",
                style: TextStyle(color: AppColors.greyColor),
              ),
              trailing: Icon(Icons.favorite_border, color: AppColors.greyColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.remove),

                      SizedBox(width: 10),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: .circular(8),
                          border: Border.all(
                            width: 0.3,
                            color: AppColors.greyColor,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 9,
                            vertical: 3,
                          ),
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10),

                      Icon(Icons.add, color: AppColors.primaryColor),
                    ],
                  ),
                  Text(
                    "\$4.99",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: Divider(height: 1,),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Product Detail",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900
                  ),),
                  Icon(Icons.keyboard_arrow_down_sharp),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 6
              ),
              child: Text(
                "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",style:
                TextStyle(color: AppColors.greyColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: Divider(height: 1,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Nutritions",style:
                  TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                  Row(
                    children: [
                      Text("100g",style:TextStyle(
                        backgroundColor: AppColors.greyColor.withOpacity(0.4),
                        fontSize: 12,
                      ),),
                      SizedBox(width: 10,),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: Divider(height: 1,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Review",style:
                  TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                  Row(
                    children: [
                      Image.asset(AppAssets.starsImage,width: 70,),
                      SizedBox(width: 10,),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            CustomButton("Add to Basket", (){})
          ],
        ),
      ),
    );
  }
}

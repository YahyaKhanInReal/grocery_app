import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';
import 'package:grocery_app/Widgets/custom_button.dart';
import 'package:grocery_app/model/favoritemodel.dart';

import '../../Widgets/custom_appbar.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  List<FavoriteModel> cartList = [
    FavoriteModel(
      image: AppAssets.tomatoImage,
      title: "Bell Pepper Red",
      price: 4.99,
      subTitle: "1kg, Price"
    ),
    FavoriteModel(
      image: AppAssets.eggsImage,
      title: "Egg Chicken Red",
      price: 3.99,
      subTitle: "4pcs, Price"
    ),
    FavoriteModel(
      image: AppAssets.gingerImage,
      title: "organic Bananas",
      price: 3.1,
      subTitle: "12kg, Price"
    ),
    FavoriteModel(
      image: AppAssets.bananaImage,
      title: "Ginger",
      price: 2.99,
      subTitle: "250gram, Price"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Column(
          children: [
            CustomAppBar(title: "My Cart",leading: Text(""),),
            SizedBox(height: 10),
            Divider(height: 1),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              cartList[index].image,
                              width: 70,
                              height: 65,
                            ),

                            SizedBox(width: 15),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartList[index].title,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),

                                  SizedBox(height: 5),

                                  Text(
                                    cartList[index].subTitle.toString(),
                                    style: TextStyle(
                                      color: AppColors.greyColor,
                                    ),
                                  ),

                                  SizedBox(height: 10),

                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.3,
                                          color: AppColors.greyColor
                                        ),
                                            borderRadius: .circular(8)
                                      ),
                                          child: Icon(Icons.remove),
                                      ),

                                      SizedBox(width: 10),

                                      Text("1",style:
                                        TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800
                                        ),),

                                      SizedBox(width: 10),

                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: .circular(8),
                                          border: Border.all(
                                            width: 0.3,
                                            color: AppColors.greyColor
                                          )
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 10),

                            Column(
                              children: [
                                Icon(Icons.close,color: AppColors.greyColor,),

                                SizedBox(height: 15),

                                Text(
                                  "\$${cartList[index].price}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Divider(
                      height: 1,
                      color: AppColors.greyColor.withOpacity(0.3),
                  )
                    ],
                  );

                },
              ),
            ),

            CustomButton("Go to CheckOut",(){
              showModalBottomSheet(
                isDismissible: false,
                  context: context,
                builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text("Checkout",style: TextStyle(
                                color: AppColors.darkColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 24
                              ),),
                              IconButton(onPressed: (){
                                Navigator.pop(context);
                              },
                                  icon: Icon(Icons.close,color: AppColors.darkColor))
                            ],
                          ),
                          SizedBox(height: 20,),
                          Divider(thickness: 0.6,
                          color: AppColors.greyColor.withOpacity(0.4),
                          ),
                          ListTile(
                            contentPadding: .all(0),
                            horizontalTitleGap: 0,
                            title: Text("Delivery",style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),),
                            trailing: Row(
                              mainAxisSize: .min,
                              children: [
                                Text("Select Method",style: TextStyle(
                                  color: AppColors.darkColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900
                                ),),
                                SizedBox(width: 6,),
                                Icon(Icons.arrow_forward_ios,size: 16,color: AppColors.darkColor),
                              ],
                            ),
                          ),
                          Divider(thickness: 0.6,
                            color: AppColors.greyColor.withOpacity(0.3),
                          ),
                          ListTile(
                            contentPadding: .all(0),
                            horizontalTitleGap: 0,
                            title: Text("Payment",style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700
                            ),),
                            trailing: Row(
                              mainAxisSize: .min,
                              children: [
                                Image.asset(AppAssets.paymentIconImage,width: 21,height: 16,),
                                SizedBox(width: 6,),
                                Icon(Icons.arrow_forward_ios,size: 16,color: AppColors.darkColor),
                              ],
                            ),
                          ),
                          Divider(thickness: 0.6,
                            color: AppColors.greyColor.withOpacity(0.3),
                          ),
                          ListTile(
                            contentPadding: .all(0),
                            horizontalTitleGap: 0,
                            title: Text("Promo Code",style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700
                            ),),
                            trailing: Row(
                              mainAxisSize: .min,
                              children: [
                                Text("Pick Discount",style: TextStyle(
                                    color: AppColors.darkColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900
                                ),),
                                SizedBox(width: 6,),
                                Icon(Icons.arrow_forward_ios,
                                  size: 16,color: AppColors.darkColor,),
                              ],
                            ),
                          ),
                          Divider(thickness: 0.6,
                            color: AppColors.greyColor.withOpacity(0.3),
                          ),
                          ListTile(
                            contentPadding: .all(0),
                            horizontalTitleGap: 0,
                            title: Text("Total Cost",style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700
                            ),),
                            trailing: Row(
                              mainAxisSize: .min,
                              children: [
                                Text("\$13.97",style: TextStyle(
                                    color: AppColors.darkColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900
                                ),),
                                SizedBox(width: 6,),
                                Icon(Icons.arrow_forward_ios,size: 16,color: AppColors.darkColor),
                              ],
                            ),
                          ),
                          Divider(thickness: 0.6,
                            color: AppColors.greyColor.withOpacity(0.3),
                          ),
                          Text("By placing an order you agree to our",style: TextStyle(
                            color: AppColors.greyColor,
                            fontWeight: FontWeight.w700,
                          ),),
                          RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Terms",style: TextStyle(
                                color: AppColors.darkColor,
                                fontWeight: FontWeight.w900
                              )
                              ),
                              TextSpan(
                                  text: " and"
                              ),
                              TextSpan(
                                  text: " Conditions" , style: TextStyle(
                                  color: AppColors.darkColor,
                                  fontWeight: FontWeight.w900
                              )
                              ),
                            ]
                          )),
                          SizedBox(height: 26,),
                          Align(
                              alignment: AlignmentGeometry.center,
                              child: CustomButton("Place Order", (){
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: Container(
                                        width: 365,
                                        height: 550,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: .circular(18)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                  alignment: .topStart,
                                                  child: GestureDetector(
                                                      onTap: (){
                                                        Navigator.pop(context);
                                                      },
                                                      child: Icon(Icons.close))),
                                              Image.asset(AppAssets.dialogImage , width: 222, height: 222,),
                                              SizedBox(height: 30,),
                                              Text("Oops! Orders Failed",style: TextStyle(
                                                fontSize: 28,
                                                color: AppColors.darkColor,
                                                fontWeight: FontWeight.w800
                                              ),),
                                              SizedBox(height: 10,),
                                              Text("Something went wrong.",style: TextStyle(
                                                  fontSize: 16,
                                                  color: AppColors.greyColor,
                                                  fontWeight: FontWeight.w800,
                                              ),),
                                              SizedBox(height: 30,),
                                              CustomButton("Please Try Again", (){}),
                                              SizedBox(height: 15,),
                                              TextButton(onPressed: (){
                                                Navigator.pop(context);
                                              } , child: Text("Back to Home",style: TextStyle(
                                                color: AppColors.darkColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 18
                                              ),))
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },);
                              }))
                        ],
                      ),
                    );
                },
              );
            })
          ],
        ),
      ),
    );
  }
}

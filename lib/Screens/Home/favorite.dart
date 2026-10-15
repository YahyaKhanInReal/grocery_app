import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';
import 'package:grocery_app/Widgets/custom_button.dart';
import 'package:grocery_app/model/favoritemodel.dart';
import '../../Widgets/custom_appbar.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<FavoriteModel> favoriteList = [
    FavoriteModel(
        image: AppAssets.spriteImage,
        title: "Sprite can",
        subTitle: "325ml, Price",
        price: 1.55,
    ),
    FavoriteModel(
        image: AppAssets.cokeImage,
        title: "Diet Coke",
        subTitle: "355ml, Price",
        price: 1.99
    ),
    FavoriteModel(
        image: AppAssets.spriteImage,
        title: "Apple & Grape Juice",
        subTitle: "2L, Price",
        price: 15.55
    ),
    FavoriteModel(
        image: AppAssets.pepsiImage,
        title: "Pepsi can",
        subTitle: "325ml, Price",
        price: 4.99
    ),
    FavoriteModel(
        image: AppAssets.cocaColaImage,
        title: "CocaCola can",
        subTitle: "330ml, Price",
        price: 4.99
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
            CustomAppBar(title: "Favorites",leading: Text("")),
            SizedBox(height: 10,),
            Divider(height: 1,)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: favoriteList.length,
                  itemBuilder: (BuildContext context , int index){
                return Column(
                  children: [
                    ListTile(
                      leading:Image.asset(favoriteList[index].image.toString(),width: 30,height: 55,),
                      title:Text(favoriteList[index].title.toString(),style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: AppColors.darkColor
                      ),),
                      subtitle:Text(favoriteList[index].subTitle.toString(),style: TextStyle(
                        color: AppColors.greyColor
                      ),) ,
                      trailing: Row(
                        mainAxisSize: .min,
                        children: [
                          Text("\$${favoriteList[index].price}",style:
                            TextStyle(
                              fontSize: 16,
                              fontWeight:FontWeight.w900,
                                color: AppColors.darkColor
                            ),),
                          SizedBox(width: 6,),
                          Icon(Icons.arrow_forward_ios,
                            size: 18,
                            color: AppColors.darkColor,
                            fontWeight: FontWeight.w800,)
                        ],
                      ),
                      contentPadding: EdgeInsets.all(10),
                      horizontalTitleGap: 25,
                    ),
                    Divider(color: AppColors.greyColor.withOpacity(0.6),thickness: 1,)
                  ],
                );
              }),
            ),
            CustomButton("Add all to Cart", (){})
          ],
        ),
      ),
    );
  }
}

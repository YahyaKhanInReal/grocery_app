import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Widgets/custom_container.dart';
import '../../Widgets/custom_appbar.dart';

class BeveragesScreen extends StatefulWidget {
  const BeveragesScreen({super.key});

  @override
  State<BeveragesScreen> createState() => _BeveragesScreenState();
}

class _BeveragesScreenState extends State<BeveragesScreen> {
  List<CustomContainer> beveragesList = [
    CustomContainer(
        image: AppAssets.cokeImage,
        title: "Diet Coke",
        subTitle: "355ml, Price",
        price: 1.99
    ),
    CustomContainer(
        image: AppAssets.spriteImage,
        title: "Sprite Can",
        subTitle: "355ml, Price",
        price: 2.99
    ),CustomContainer(
        image: AppAssets.appleJuiceImage,
        title: "Apple Juice",
        subTitle: "3litre, Price",
        price: 14.99
    ),
    CustomContainer(
        image: AppAssets.orangeJuiceImage,
        title: "Orange Juice",
        subTitle: "3litre, Price",
        price: 12.99
    ),
    CustomContainer(
        image: AppAssets.cocaColaImage,
        title: "CocaCola Can",
        subTitle: "355ml, Price",
        price: 4.99
    ),
    CustomContainer(
        image: AppAssets.pepsiImage,
        title: "Pepsi Can",
        subTitle: "355ml, Price",
        price: 3.99
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:PreferredSize(preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomAppBar(
                title: "Beverages",
                leading: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back)),
                icon: Image.asset(AppAssets.filterIcon,width: 16,height: 17,),
              ),
            )),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                itemCount: beveragesList.length,
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 220,
                  ),
                  itemBuilder: (BuildContext context,int index){
                    return CustomContainer(
                        image: beveragesList[index].image.toString(),
                        title: beveragesList[index].title.toString(),
                        subTitle: beveragesList[index].subTitle.toString(),
                        price: beveragesList[index].price
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

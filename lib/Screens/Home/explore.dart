import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/Home/beverages.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/model/product_model.dart';

import '../../Widgets/custom_appbar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<ProductModel> productList = [
    ProductModel(
      image: AppAssets.product1,
      title: "Fruits & Vegetables",
      color: Color(0xff53B175).withOpacity(0.2),
      borderColor: Color(0xff53B175).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product2,
      title: "Cooking & Oil Ghee",
      color: Color(0xffF8A44C).withOpacity(0.2),
      borderColor: Color(0xffF8A44C).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product3,
      title: "Meat & Fish",
      color: Color(0xffF7A593).withOpacity(0.2),
      borderColor: Color(0xffF7A593).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product4,
      title: "Bakery & Snakes",
      color: Color(0xffD3B0E0).withOpacity(0.2),
      borderColor: Color(0xffD3B0E0).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product5,
      title: "Beverages",
      color: Color(0xffFDE598).withOpacity(0.2),
      borderColor: Color(0xffFDE598).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product6,
      title: "Dairy & Eggs",
      color: Color(0xffB7DFF5).withOpacity(0.2),
      borderColor: Color(0xffB7DFF5).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product1,
      title: "Fruits & Vegetables",
      color: Color(0xff53B175).withOpacity(0.2),
      borderColor: Color(0xff53B175).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product2,
      title: "Cooking & Oil Ghee",
      color: Color(0xffF8A44C).withOpacity(0.2),
      borderColor: Color(0xffF8A44C).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product3,
      title: "Meat & Fish",
      color: Color(0xffF7A593).withOpacity(0.2),
      borderColor: Color(0xffF7A593).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product4,
      title: "Bakery & Snakes",
      color: Color(0xffD3B0E0).withOpacity(0.2),
      borderColor: Color(0xffD3B0E0).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product5,
      title: "Beverages",
      color: Color(0xffFDE598).withOpacity(0.2),
      borderColor: Color(0xffFDE598).withOpacity(0.7),
    ),
    ProductModel(
      image: AppAssets.product6,
      title: "Dairy & Eggs",
      color: Color(0xffB7DFF5).withOpacity(0.2),
      borderColor: Color(0xffB7DFF5).withOpacity(0.7),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(title: "Explore",leading: Text("")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hint: Text("Search store"),
                fillColor: Color(0xffF2F3F2),
                filled: true,
                prefixIcon : Icon(Icons.search) ,
                border: OutlineInputBorder(
                  borderRadius: .circular(15),
                  borderSide: .none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 195,
                ),
                itemCount: productList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BeveragesScreen()));
                    },
                    child: Container(
                      width: 175,
                      height: 190,
                      decoration: BoxDecoration(
                        color: productList[index].color,
                        borderRadius: .circular(18),
                        border: Border.all(
                          color: productList[index].borderColor
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: .center,
                          crossAxisAlignment: .center,
                          children: [
                            Image.asset(
                              productList[index].image.toString(),
                              width: 115,
                              height: 78,
                            ),
                            SizedBox(height: 20),
                            Text(
                              productList[index].title.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';
import 'package:grocery_app/Widgets/custom_button.dart';
import 'package:grocery_app/Widgets/custom_container.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text("Search"),
                      border:OutlineInputBorder(
                        borderRadius: .circular(16),
                        borderSide: BorderSide.none
                      ),
                      fillColor: Color(0xffF2F3F2),
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.cancel),
                    ),
                  ),
                ),
                SizedBox(width: 16,),
                GestureDetector(
                    child: Image.asset(AppAssets.filterIcon,width: 16,),
                  onTap: (){
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (BuildContext context, StateSetter setModelState) {
                            child:
                            return SizedBox(
                              height: 700,
                              width: .infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisAlignment: .start,
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text("Categories", style: TextStyle(
                                      color: AppColors.darkColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900,
                                    ),),
                                    ListTile(
                                      horizontalTitleGap: 8,
                                      contentPadding: .zero,
                                      leading: Checkbox(
                                          activeColor: AppColors.primaryColor,
                                          value: isChecked1,
                                          onChanged: (val) {
                                            setModelState(() {
                                              isChecked1 = val!;
                                            });
                                          }),
                                      title: Text("Egg", style: TextStyle(
                                        fontSize: 16,
                                        color: isChecked1 ? AppColors
                                            .primaryColor : Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                    ),
                                    ListTile(
                                      horizontalTitleGap: 8,
                                      contentPadding: .zero,
                                      leading: Checkbox(
                                          activeColor: AppColors.primaryColor,
                                          value: false,
                                          onChanged: (val) {
                                            setState(() {});
                                          }),
                                      title: Text(
                                        "Noodies & Pasta", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                    ),
                                    ListTile(
                                      horizontalTitleGap: 8,
                                      contentPadding: .zero,
                                      leading: Checkbox(
                                          activeColor: AppColors.primaryColor,
                                          value: false,
                                          onChanged: (val) {
                                            setState(() {

                                            });
                                          }),
                                      title: Text(
                                        "Chips & Crisps", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                    ),
                                    ListTile(
                                      horizontalTitleGap: 8,
                                      contentPadding: .zero,
                                      leading: Checkbox(
                                          activeColor: AppColors.primaryColor,
                                          value: false,
                                          onChanged: (val) {
                                            setState(() {});
                                          }),
                                      title: Text("Fast Food", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                    ),
                                    SizedBox(height: 40,),

                                    Text("Brand", style: TextStyle(
                                      color: AppColors.darkColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900,
                                    ),),
                                    ListTile(
                                      horizontalTitleGap: 8,
                                      contentPadding: .zero,
                                      leading: Checkbox(
                                          activeColor: AppColors.primaryColor,
                                          value: false,
                                          onChanged: (val) {
                                            setState(() {});
                                          }),
                                      title: Text(
                                        "Pepsi Brand", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                    ),
                                    ListTile(
                                      horizontalTitleGap: 8,
                                      contentPadding: .zero,
                                      leading: Checkbox(
                                          activeColor: AppColors.primaryColor,
                                          value: isChecked2,
                                          onChanged: (val) {
                                            setModelState(() {
                                              isChecked2 = val!;
                                            });
                                          }),
                                      title: Text(
                                        "McDonald's", style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: isChecked2 ? AppColors
                                              .primaryColor : Colors.black
                                      ),),
                                    ),
                                    ListTile(
                                      horizontalTitleGap: 8,
                                      contentPadding: .zero,
                                      leading: Checkbox(
                                          activeColor: AppColors.primaryColor,
                                          value: false,
                                          onChanged: (val) {
                                            setState(() {});
                                          }),
                                      title: Text(
                                        "Mountain dew", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                    ),
                                    ListTile(
                                      horizontalTitleGap: 8,
                                      contentPadding: .zero,
                                      leading: Checkbox(
                                          activeColor: AppColors.primaryColor,
                                          value: false,
                                          onChanged: (val) {
                                            setState(() {});
                                          }),
                                      title: Text("CocaCola", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                    ),
                                    SizedBox(height: 40,),
                                    CustomButton("Apply Filters", () {
                                      Navigator.pop(context);
                                    })
                                  ],
                                ),
                              ),
                            );
                          });
                      },);
                  },
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(
                  vertical: 20
                ),
                scrollDirection: .vertical,
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
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/Home/explore.dart';
import 'package:grocery_app/Screens/Home/favorite.dart';
import 'package:grocery_app/Screens/Home/home_screen.dart';
import 'package:grocery_app/Screens/Home/mycart.dart';
import 'package:grocery_app/Screens/Profile/profile_screen.dart';
import 'package:grocery_app/Utils/app_colors.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Widget> bottomBarList = [
    HomeScreen(),
    ExploreScreen(),
    MyCartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomBarList.elementAt(screenIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.darkColor,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: .fixed,
        onTap: (value){
          setState(() {
            screenIndex = value;
          });
        },
        currentIndex: screenIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_rounded),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

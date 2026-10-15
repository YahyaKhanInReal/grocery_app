import 'package:flutter/material.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          foregroundColor: Colors.white,
          title: Text("TabBar"),
          leading: Icon(Icons.facebook),
          actions: [
            Icon(Icons.person)
          ],
          bottom: PreferredSize(
            preferredSize: .fromHeight(80),
            child: Container(
              color: AppColors.primaryColor,
              child: TabBar(tabs: [
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.perm_contact_cal),text: "Contact",),
                Tab(icon: Icon(Icons.electrical_services),text: "Services",),
                Tab(icon: Icon(Icons.login),text: "Login",),
              ],
              dividerColor: Colors.transparent,
              labelColor:Colors.red,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.red,
              // isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Column(
              children: [
                Text("This is Home page"),
                Image.asset(AppAssets.onBoardScreenImage,
                  height: 400,width: 600,)
              ],
            ),
            
          ),
          Center(
            child: Text("This is Contact Page"),
          ),
          Center(
            child: Text("This is services Page"),
          ),
          Center(
            child: Text("This is Login Page"),
          ),
        ]),
      ),
    );
  }
}

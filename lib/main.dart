import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:grocery_app/Screens/App_Starting_Screens/on_boarding.dart';
import 'package:grocery_app/Screens/App_Starting_Screens/splash_screen.dart';
import 'package:grocery_app/Screens/Auth/login_screen.dart';
import 'package:grocery_app/Screens/Auth/signup_screen.dart';
import 'package:grocery_app/Screens/Home/beverages.dart';
import 'package:grocery_app/Screens/Home/bottom_bar.dart';
import 'package:grocery_app/Screens/Home/explore.dart';
import 'package:grocery_app/Screens/Home/favorite.dart';
import 'package:grocery_app/Screens/Home/filters.dart';
import 'package:grocery_app/Screens/Home/home_screen.dart';
import 'package:grocery_app/Screens/Home/mycart.dart';
import 'package:grocery_app/Screens/Home/order_accepted.dart';
import 'package:grocery_app/Screens/Home/product_detail.dart';
import 'package:grocery_app/Screens/Home/search_screen.dart';
import 'package:grocery_app/Screens/Profile/profile_screen.dart';

void main() {
  DevicePreview.enable(
    enabled: kDebugMode,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),

      home: const SplashScreen(),
    );
  }
}
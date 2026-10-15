import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/Screens/Auth/login_screen.dart';
import 'package:grocery_app/Utils/app_assets.dart';
import 'package:grocery_app/Utils/app_colors.dart';
import 'package:grocery_app/Widgets/customListTile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 100 ,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AppAssets.profileImage),
            ),
            SizedBox(height: 15,),
            Text("Moran Mill",style:GoogleFonts.allerta(
              fontSize: 18,
              fontWeight: FontWeight.w900
            ),),
            Text("morganmill@gmail.com",style: TextStyle(
              color: Color(0xff848484)
            ),),
            SizedBox(height: 20,),
            SizedBox(
              width: 145,
              height: 52,
              child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(16)
                  )
                ),
                child: Row(
                  mainAxisAlignment: .spaceAround,
                children: [
                  Image.asset(AppAssets.editIcon , width: 24,),
                  Text("Edit Profile")
                ],
              ),
              ),
            ),
            SizedBox(height: 40,),
            CustomListTile(
                leading: Image.asset(AppAssets.notificationIcon,width: 24 , height: 24,),
                title: "Notifications",
                // trailing: Icon(Icons.arrow_forward_ios_outlined,)
            ),
            Divider(
              height: 1,
              color: Color(0xffA2A2A2),
            ),
            CustomListTile(
              leading: Image.asset(AppAssets.fileIcon,width: 24 , height: 24,),
              title: "Privacy Policy",
              // trailing: Icon(Icons.arrow_forward_ios_outlined,)
            ),
            Divider(
              height: 1,
              color: Color(0xffA2A2A2),
            ),
            CustomListTile(
              leading: Image.asset(AppAssets.fileIcon,width: 24 , height: 24,),
              title: "Terms and Conditions",
              // trailing: Icon(Icons.arrow_forward_ios_outlined,)
            ),
            Divider(
              height: 1,
              color: Color(0xffA2A2A2),
            ),
            CustomListTile(
              leading: Image.asset(AppAssets.questionIcon,width: 24 , height: 24,),
              title: "Help & support",
              // trailing: Icon(Icons.arrow_forward_ios_outlined,)
            ),
            Divider(
              height: 1,
              color: Color(0xffA2A2A2),
            ),
            CustomListTile(
              leading: Image.asset(AppAssets.shareIcon,width: 24 , height: 24,),
              title: "Invite your friend",
              // trailing: Icon(Icons.arrow_forward_ios_outlined,)
            ),
            Divider(
              height: 1,
              color: Color(0xffA2A2A2),
            ),
            CustomListTile(
              leading: Image.asset(AppAssets.darkModeIcon,width: 24 , height: 24,),
              title: "Dark Mode",
              // trailing: Icon(Icons.arrow_forward_ios_outlined,)
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 67,
              width: 370,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.primaryColor,
                    backgroundColor: Color(0xffF2F3F2),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: .circular(16)
                    )
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Row(
                      children: [
                        Image.asset(AppAssets.exitIcon , width: 24,height: 24,),
                        SizedBox(width: 100,),
                        Text("Log Out",style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16
                        ),)
                      ],
                    ),
                  )),
            )

          ],
        ),
      ),
    );
  }
}

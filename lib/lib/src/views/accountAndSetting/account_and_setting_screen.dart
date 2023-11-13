import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/icons.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/views/profileScreen/profile_screen.dart';
 
class AccountAndSettingScreen extends StatefulWidget {
  const AccountAndSettingScreen({super.key});

  @override
  State<AccountAndSettingScreen> createState() =>
      _AccountAndSettingScreenState();
}

class _AccountAndSettingScreenState extends State<AccountAndSettingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Account & Settings",
          style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account",
              style: TextStyle(
                  color: titleColor, fontWeight: FontWeight.w600, fontSize: 18),
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>const ProfileScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(profileIcon),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: subTtileColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: subTtileColor,
                  )
                ],
              ),
            ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset(shoppingCartIcon),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Shipping Address",
                        style: TextStyle(
                            color: subTtileColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: subTtileColor,
                )
              ],
            ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset(paymentIcon),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Payment Info",
                        style: TextStyle(
                            color: subTtileColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: subTtileColor,
                )
              ],
            ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
            SizedBox(
              height: size.height * 0.02,
            ),
            //

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Image.asset(deleteIcon),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Delete Account",
                        style: TextStyle(
                            color: subTtileColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: subTtileColor,
                )
              ],
            ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
             SizedBox(
              height: size.height * 0.02,
            ),
            //
                Text(
              "App Settings",
              style: TextStyle(
                  color: titleColor, fontWeight: FontWeight.w600, fontSize: 18),
            ),
            //
             SizedBox(
              height: size.height * 0.02,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                
                 Text(
                   "Enable faceId For Login",
                   style: TextStyle(
                       color: subTtileColor,
                       fontSize: 18,
                       fontWeight: FontWeight.bold),
                 ),
                 Image.asset(closedSwitchIcon)
               ],
             ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
             SizedBox(
              height: size.height * 0.02,
            ),
            //
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                
                 Text(
                   "Enable Push Notification",
                   style: TextStyle(
                       color: subTtileColor,
                       fontSize: 18,
                       fontWeight: FontWeight.bold),
                 ),
                 Image.asset(openSwitchIcon)
               ],
             ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
             SizedBox(
              height: size.height * 0.02,
            ),
            //
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                
                 Text(
                   "Enable Local Service",
                   style: TextStyle(
                       color: subTtileColor,
                       fontSize: 18,
                       fontWeight: FontWeight.bold),
                 ),
                 Image.asset(openSwitchIcon)
               ],
             ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
             SizedBox(
              height: size.height * 0.02,
            ),
            //
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                
                 Text(
                   "Dark Mode",
                   style: TextStyle(
                       color: subTtileColor,
                       fontSize: 18,
                       fontWeight: FontWeight.bold),
                 ),
                 Image.asset(closedSwitchIcon)
               ],
             ),
            Divider(
              thickness: 0.2,
              color: subTtileColor,
            ),
            //
             SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

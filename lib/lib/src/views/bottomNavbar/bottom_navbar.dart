import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/views/accountAndSetting/account_and_setting_screen.dart';
import 'package:nicker_shoes/lib/src/views/favorite/favorite_screen.dart';
import 'package:nicker_shoes/lib/src/views/home/home_screen.dart';
import 'package:nicker_shoes/lib/src/views/notifications/notifications_screen.dart';
import 'package:nicker_shoes/lib/src/views/orders/orders_screem.dart';
 
 

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final controller = NotchBottomBarController(index: 2);
  final pageController = PageController(initialPage: 2);
  List screens = [
    const OrdersScreen(),
    const FavoriteScreen(),
    const HomeScreen(),
    const  NotificationScreen(),
    const AccountAndSettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(screens.length, (index) => screens[index]),
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
          notchBottomBarController: controller,
          notchColor: primaryColor,
          showBlurBottomBar: false,
          showShadow: true,
          bottomBarItems: [
            BottomBarItem(
              inActiveItem: Icon(
                Icons.shopping_cart_checkout,
                color: subTtileColor,
              ),
              activeItem: const Icon(
                Icons.shopping_cart_checkout,
                color: Colors.white,
              ),
            ),
            //
            BottomBarItem(
              inActiveItem: Icon(
                Icons.favorite,
                color: subTtileColor,
              ),
              activeItem: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            //
            BottomBarItem(
              inActiveItem: Icon(
                Icons.home_filled,
                color: subTtileColor,
              ),
              activeItem: const Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
            ),
            //
            BottomBarItem(
              inActiveItem: Icon(
                Icons.notifications,
                color: subTtileColor,
              ),
              activeItem: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            //
            BottomBarItem(
              inActiveItem: Icon(
                Icons.person,
                color: subTtileColor,
              ),
              activeItem: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
          onTap: (index) {
            pageController.jumpToPage(index);
          }),
    );
  }
}

import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/images.dart';
import 'package:nicker_shoes/lib/src/views/bottomNavbar/bottom_navbar.dart';
import 'package:nicker_shoes/lib/src/views/onboardScreens/onboard_screen_one.dart';
 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
    
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => user == null?const OnboardScreenOne():const BottomNavbar()));
    });
    log(user.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Center(child: Image.asset(whiteLogo)));
  }
}

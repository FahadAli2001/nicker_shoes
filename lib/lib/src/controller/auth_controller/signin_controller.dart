import 'dart:developer';

 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/views/bottomNavbar/bottom_navbar.dart';
import 'package:nicker_shoes/lib/src/views/onboardScreens/onboard_screen_one.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SignInController with ChangeNotifier {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   
  Future<void> signIn(context) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String email = emailController.text;
    String password = passwordController.text;
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      
      //log(credential.user!.uid);
      
      sp.setString("userId",credential.user!.uid);
      showTopSnackBar(
        Overlay.of(context),
        const CustomSnackBar.success(
          message: "User Login Sucessfully",
        ),
      );
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavbar()),
        (route) => false,  
      );
      clearTextField();
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      log("$e login error");
      if (e.code == 'user-not-found') {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "User Not Found",
          ),
        );
        notifyListeners();
      } else if (e.code == 'wrong-password') {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "Wrong Password",
          ),
        );
        notifyListeners();
      } else if (e.code == "network-request-failed") {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "Check your internet",
          ),
        );
        notifyListeners();
      } else if (e.code == "INVALID_LOGIN_CREDENTIALS") {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "Invalid Credential",
          ),
        );
        notifyListeners();
      }
    }
    catch(e){
      log(e.toString());
    }
  }



  
void signOut(context)async{
  try {
    await FirebaseAuth.instance.signOut();
     Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const OnboardScreenOne()),
        (route) => false,  
      );

  } catch (e) {
    log(e.toString());
  }
  notifyListeners();
}

 void clearTextField(){
  emailController.clear();
  passwordController.clear();
 }


}

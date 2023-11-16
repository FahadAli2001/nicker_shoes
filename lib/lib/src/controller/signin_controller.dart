import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
 import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/views/bottomNavbar/bottom_navbar.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SignInController with ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   String? name;
  String? email;
  Future<void> signIn(context) async {
    String email = emailController.text;
    String password = passwordController.text;
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      
      //log(credential.user!.uid);
      fetchDataOfUser(credential.user!.uid);
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
    } on FirebaseAuthException catch (e) {
      log("$e login error");
      if (e.code == 'user-not-found') {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "User Not Found",
          ),
        );
      } else if (e.code == 'wrong-password') {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "Wrong Password",
          ),
        );
      } else if (e.code == "network-request-failed") {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "Check your internet",
          ),
        );
      } else if (e.code == "INVALID_LOGIN_CREDENTIALS") {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "Invalid Credential",
          ),
        );
      }
    }
  }


  Future<void> fetchDataOfUser(String userId) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  try {
     
    DocumentSnapshot documentSnapshot = await firestore.collection('users').doc(userId).get();

    if (documentSnapshot.exists) {
       
      Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;

      
        name = data['name'];
        email = data['email'];

      
    } else {
     // log('Document with ID $userId does not exist.');
    }
  } catch (e) {
    log('Error fetching specific data: $e');
  }
}


 void clearTextField(){
  emailController.clear();
  passwordController.clear();
 }
}

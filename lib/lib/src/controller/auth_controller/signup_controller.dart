import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpController with ChangeNotifier {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? userId;
  Future<void> signUp(context) async {
    String email = emailController.text;
    String password = passwordController.text;

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      userId = credential.user!.uid;
      addUserInfo(context);

      clearTextField();
      showTopSnackBar(
        Overlay.of(context),
        const CustomSnackBar.success(
          message: "User created successfully",
        ),
      );
    } on FirebaseAuthException catch (e) {
      log("${e.code}auth");
      if (e.code == "weak-password") {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "weak-password",
          ),
        );
      } else if (e.code == "network-request-failed") {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "Check your internet",
          ),
        );
      } else if (e.code == "email-already-in-use") {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "This email is already in used",
          ),
        );
      }
    }
  }

  Future<void> addUserInfo(context) async {
    try {
      await firebaseFirestore
          .collection("users")
          .doc(userId)
          .set({"name": nameController.text, "email": emailController.text});
    } catch (e) {
      log("${e}user");
      showTopSnackBar(
        Overlay.of(context),
        const CustomSnackBar.error(
          message: "This email is already in used",
        ),
      );
    }
  }

  void clearTextField() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }
}

import 'dart:developer';
import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpController with ChangeNotifier{
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Future<void> signUp( )async{
      String email = emailController.text;
      String password = passwordController.text;
      try {
        final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

      } on FirebaseAuthException catch (e) {
        log(e.toString());
        if (e.code == "weak-password") {
          Fluttertoast.showToast(
        msg: "Weak Passowrd",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
        }
      }
    }
}
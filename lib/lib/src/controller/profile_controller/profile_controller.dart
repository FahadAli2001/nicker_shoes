import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends ChangeNotifier {
  String? name;
  String? email;

  Future<void> fetchDataOfUser() async {
    String? userId;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    SharedPreferences sp = await SharedPreferences.getInstance();

    userId = sp.getString("userId");

    try {
      DocumentSnapshot documentSnapshot =
          await firestore.collection('users').doc(userId).get();

      if (documentSnapshot.exists) {
        Map<String, dynamic> data =
            documentSnapshot.data() as Map<String, dynamic>;

        name = data['name'];
        email = data['email'];

        notifyListeners();
      } else {}
    } catch (e) {
      log('Error fetching specific data: $e');
    }
  }
}

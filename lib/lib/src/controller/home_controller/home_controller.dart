import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<String> categoryNames = [];

  Future<List<String>> getCategories() async {
    

  try {
    Stream category = await firestore.collection('categories').snapshots();

    
  } catch (e) {
    log('Error fetching data from categories: $e');
     
  }

  return categoryNames; // Return the list of category names
}



}
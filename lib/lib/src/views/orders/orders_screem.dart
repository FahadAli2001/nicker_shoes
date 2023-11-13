import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/custom/custom_cart_box/custom_cart_box.dart';
 

class OrdersScreen extends StatefulWidget {
  
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Orders History",
          style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        
      ),
      body: Padding(
      padding:   EdgeInsets.symmetric(horizontal: horizontalPadding,vertical: verticalPadding),
      child: Column(
      children: [
      for(var i=0;i<2;i++)...[
        CustomCartBox(index: i,)
      ],
      
      ],
      ),
      )
    );
  }
}
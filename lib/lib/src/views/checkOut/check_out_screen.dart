import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/icons.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/views/bottomNavbar/bottom_navbar.dart';

import '../../const/images.dart';
 
class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return   Scaffold(
       appBar: AppBar(
        title: Text(
          "Check Out",
          style: TextStyle(color: titleColor, fontSize: 18),
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(backBtn)),
      ),
      body:Stack(
        children: [
           Padding(
        padding:   EdgeInsets. symmetric(horizontal: horizontalPadding - 15,vertical: verticalPadding - 10),
        child: Column(
          children: [
            Card(
              elevation: 10,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                width: size.width *0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contact Information",style: TextStyle(
                        color: titleColor,fontWeight: FontWeight.w700,
                        fontSize: 16
                      ),),
                      ListTile(
                        leading: Image.asset(emailIcon),
                        title:const Text("xyz@gmail.com"),
                        subtitle:const Text("email"),
                        trailing: Icon(Icons.edit,color: subTtileColor,),
                      ),
                      ListTile(
                        leading: Image.asset(callIcon),
                        title:const Text("+92 120220 130"),
                        subtitle:const Text("phone"),
                        trailing: Icon(Icons.edit,color: subTtileColor,),
                      ),
                       SizedBox(
                        height: size.height*0.01,
                      ),
                       Text("Address",style: TextStyle(
                        color: titleColor,fontWeight: FontWeight.w700,
                        fontSize: 16
                      ),),
                      SizedBox(
                        height: size.height*0.001,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("karachi sindh pakistan",style: TextStyle(
                        color: subTtileColor,fontWeight: FontWeight.w700,
                        fontSize: 12
                      ),),
                      Icon(Icons.arrow_drop_down,color: subTtileColor,)
                        ],
                      ),
                       SizedBox(
                        height: size.height*0.01,
                      ),
                      Image.asset(map,fit: BoxFit.cover,),
                       SizedBox(
                        height: size.height*0.01,
                      ),
                         
                    ],
                  ),
                ),
                              ),
            ),
            //---
          ],
        ),
      ),
   
    Positioned(
          top: size.height * 0.6,
          child: Container(
            width: size.width,
            height: size.height * 0.3,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SubTotal",
                        style: TextStyle(color: subTtileColor, fontSize: 18),
                      ),
                      Text(
                        "\$450.0",
                        style: TextStyle(color: titleColor, fontSize: 18),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.2,
                    color: subTtileColor,
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shopping",
                        style: TextStyle(color: subTtileColor, fontSize: 18),
                      ),
                      Text(
                        "\$45.0",
                        style: TextStyle(color: titleColor, fontSize: 18),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.2,
                    color: subTtileColor,
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Cost",
                        style: TextStyle(color: subTtileColor, fontSize: 18),
                      ),
                      Text(
                        "\$495.0",
                        style: TextStyle(color: titleColor, fontSize: 18),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.2,
                    color: subTtileColor,
                  ),
                  //
                const  SizedBox(
                    height: 15,
                  ),
                  //
                  GestureDetector(
                    onTap: () {
                   showDialog(
  context: context,
  builder: (context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        width: size.width*0.5,
        height: size.height*0.3,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(sucess),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  =>const BottomNavbar()));
                },
                child: Image.asset(backToShoppingBtn)),
            ],
          ),
        ),
      ),
    );
  },
);

                    },
                    child: Image.asset(paymentBtn))
                ],
              ),
            ),
          ),
        )
     
     
        ],
      )
    );
  }
}
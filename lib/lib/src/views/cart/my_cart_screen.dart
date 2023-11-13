import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/custom/custom_cart_box/custom_cart_box.dart';
import 'package:nicker_shoes/lib/src/views/checkOut/check_out_screen.dart';

import '../../const/images.dart';
 
class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: TextStyle(color: titleColor, fontSize: 18),
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(backBtn)),
      ),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: Column(
            children: [
              for (var i = 0; i < 2; i++) ...[
                CustomCartBox(
                  index: i,
                )
              ],
            ],
          ),
        ),
        //
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    const  CheckOutScreen()));
                    },
                    child: Image.asset(checkOutBtn))
                ],
              ),
            ),
          ),
        )
     
     
      ]),
    );
  }
}
 
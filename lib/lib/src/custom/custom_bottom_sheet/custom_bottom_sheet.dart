import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/images.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
 

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height,
      decoration:const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      child: Padding(
        padding:   EdgeInsets.symmetric(horizontal: horizontalPadding    , vertical: verticalPadding -10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(bar,width: 120,fit: BoxFit.fill,),
           const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
              width: size.width *0.38,
            ),
                   Text(
              "Filter",
              style: TextStyle(color: titleColor, fontSize: 22,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: size.width *0.25,
            ),
              Text(
              "Reset",
              style: TextStyle(color: subTtileColor, fontSize: 15),
            ),
              ],
            ),
            //
               const SizedBox(
              height: 15,
            ),
            //
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                "Gender",
                style: TextStyle(color: titleColor, fontSize: 20),
                          ),
              ),
              //
                const SizedBox(
              height: 10,
            ),
            //
              Image.asset(genders,width: size.width*0.9,fit: BoxFit.fill,),
              //
               const SizedBox(
              height: 10,
            ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                "Size",
                style: TextStyle(color: titleColor, fontSize: 20),
                          ),
              ),
              //
                const SizedBox(
              height: 10,
            ),
            //
              Image.asset(sizes,width: size.width*0.9,fit: BoxFit.fill,),
              //
                 const SizedBox(
              height: 10,
            ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                "Price",
                style: TextStyle(color: titleColor, fontSize: 20),
                          ),
              ),
              //
                const SizedBox(
              height: 10,
            ),
            //
            Image.asset(priceBar,width: size.width*0.7,fit: BoxFit.fill,),
            //
               const SizedBox(
              height: 10,
            ),
            //
              Image.asset(applyBtn,width: size.width*0.7,fit: BoxFit.fill,),
          ],
        ),
      ),
    );
  }
}
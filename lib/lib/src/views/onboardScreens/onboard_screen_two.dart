import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/images.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/views/onboardScreens/onboard_screen_three.dart';
 

class OnboardScreenTwo extends StatefulWidget {
  const OnboardScreenTwo({super.key});

  @override
  State<OnboardScreenTwo> createState() => _OnboardScreenTwoState();
}

class _OnboardScreenTwoState extends State<OnboardScreenTwo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.2,
            ),
            Image.asset(
              greyShoe,
              width: size.width,
              height: size.height * 0.3,
              fit: BoxFit.cover,
            ),
            Text(
              "Follow Latest",
              style: TextStyle(
                  color: titleColor,
                  fontSize: size.width * 0.09,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Style Shoes",
              style: TextStyle(
                  color: titleColor,
                  fontSize: size.width * 0.09,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              "There are many attractive and \n beautiful shoes",
              style: TextStyle(
                  color: subTtileColor,
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  pageIndicator2,
                  width: size.width * 0.2,
                  fit: BoxFit.cover,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardScreenThree()));
                  },
                  child: Image.asset(
                    nextBtn,
                    width: size.width * 0.35,
                    //fit: BoxFit.fill,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

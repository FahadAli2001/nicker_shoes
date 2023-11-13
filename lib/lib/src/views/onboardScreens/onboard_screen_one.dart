import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/images.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/views/onboardScreens/onboard_screen_two.dart';

import '../../const/const_colors.dart';
 
class OnboardScreenOne extends StatefulWidget {
  const OnboardScreenOne({super.key});

  @override
  State<OnboardScreenOne> createState() => _OnboardScreenOneState();
}

class _OnboardScreenOneState extends State<OnboardScreenOne> {
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
              blueShoe,
              width: size.width,
              height: size.height * 0.3,
              fit: BoxFit.cover,
            ),
            Text(
              "Start Journey",
              style: TextStyle(
                  color: titleColor,
                  fontSize: size.width * 0.09,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "With Nike",
              style: TextStyle(
                  color: titleColor,
                  fontSize: size.width * 0.09,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              " Smart,Gorgeus & Fashionable \n Collection",
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
                  pageIndicator1,
                  width: size.width * 0.2,
                  fit: BoxFit.cover,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardScreenTwo()));
                  },
                  child: Image.asset(
                    getStartedBtn,
                    width: size.width * 0.35,
                    //  fit: BoxFit.fill,
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

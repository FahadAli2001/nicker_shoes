import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/images.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/views/siginScreen/signin_screen.dart';
 

class OnboardScreenThree extends StatefulWidget {
  const OnboardScreenThree({super.key});

  @override
  State<OnboardScreenThree> createState() => _OnboardScreenThreeState();
}

class _OnboardScreenThreeState extends State<OnboardScreenThree> {
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
              whiteShoe,
              width: size.width,
              height: size.height * 0.3,
              fit: BoxFit.fill,
            ),
            Text(
              "Summer Shoes",
              style: TextStyle(
                  color: titleColor,
                  fontSize: size.width * 0.09,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Nike 2023",
              style: TextStyle(
                  color: titleColor,
                  fontSize: size.width * 0.09,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              "There are many attractive  shoes",
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
                  pageIndicator3,
                  width: size.width * 0.2,
                  fit: BoxFit.cover,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
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

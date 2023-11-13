import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/images.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/custom/customTextfiled/custom_textfield.dart';
 
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    backBtn,
                    width: size.width * 0.2,
                  ),
                )),
            //
            Center(
              child: Text(
                "Create Account",
                style: TextStyle(
                    color: titleColor,
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Center(
              child: Text(
                "Let's create account",
                style: TextStyle(
                    color: subTtileColor,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "Name",
              style: TextStyle(
                  color: subTtileColor,
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomTextField(
              width: size.width,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Email Address",
              style: TextStyle(
                  color: subTtileColor,
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomTextField(
              width: size.width,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Password",
              style: TextStyle(
                  color: subTtileColor,
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomTextField(
              suffixIcon: Icon(
                Icons.visibility_off,
                color: subTtileColor,
              ),
              width: size.width,
            ),

            SizedBox(
              height: size.height * 0.05,
            ),
            Image.asset(signInBtn),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              width: size.width,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Center(child: Image.asset(googleSignInBtn)),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: TextStyle(
                        color: subTtileColor,
                        fontSize: size.width * 0.03,
                      ),
                    ),
                    Text(
                      "Signin ",
                      style: TextStyle(
                        color: titleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.03,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

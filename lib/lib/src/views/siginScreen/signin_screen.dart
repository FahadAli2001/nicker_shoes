import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/images.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/custom/customTextfiled/custom_textfield.dart';
import 'package:nicker_shoes/lib/src/views/bottomNavbar/bottom_navbar.dart';
 

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                "Hello Again!",
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
                "Welcome Back , Please login to use app",
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
              height: size.height * 0.01,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Recover Password?",
                style: TextStyle(
                  color: subTtileColor,
                  fontSize: size.width * 0.035,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavbar()));
                },
                child: Image.asset(signInBtn)),
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
              height: size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                },
                child: Row(
                  children: [
                    Text(
                      "Don't have an account ? ",
                      style: TextStyle(
                        color: subTtileColor,
                        fontSize: size.width * 0.03,
                      ),
                    ),
                    Text(
                      "Sign Up For Free ",
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

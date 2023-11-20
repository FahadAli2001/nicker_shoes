import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/images.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/controller/profile_controller/profile_controller.dart';
 import 'package:nicker_shoes/lib/src/custom/customTextfiled/custom_textfield.dart';
import 'package:provider/provider.dart';
 

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileController controller = ProfileController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.fetchDataOfUser();

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Consumer<ProfileController>(
      builder: (context, profileController, child) {
        return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(backBtn)),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Profile",style: TextStyle(color: titleColor,fontWeight: FontWeight.bold),),
          centerTitle: true,
          actions: [
            Padding(
              padding:   EdgeInsets.symmetric(horizontal:horizontalPadding),
              child: Icon(Icons.edit,color: primaryColor,),
            )
          ],
        ),
        body: Padding(
          padding:   EdgeInsets.symmetric(horizontal: horizontalPadding,vertical: verticalPadding-10),
          child: Column(
           
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: size.width * 0.4,
                  height: size.height * 0.2,
     
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        right: 10,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.grey.shade300,
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.16,
                        left: size.width * 0.15,
                        child: Icon(Icons.camera_alt,color: primaryColor,size: 35,))
                    ],
                  ),
                ),
              ),
              //
              Center(child: Text(profileController.name.toString(),style: TextStyle(color: titleColor,fontWeight: FontWeight.w600,fontSize: 18),)),
              //
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
            ],
          ),
        ),
      );
      },
    );
  }
}
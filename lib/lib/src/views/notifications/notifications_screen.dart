import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/custom/custom_notification_box/custom_notification_box.dart';
 

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return 
      Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Notifications",
          style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
            "Clear All",
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
                  ),
          ),
        ],
      ),
      body: Padding(
        padding:   EdgeInsets.symmetric(horizontal: horizontalPadding,vertical: verticalPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              "Today",
              style: TextStyle(color: titleColor, fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    //
                    for(var i=0;i<2;i++)...[
                      CustomNotificationBox(index: i,)
                    ],
                    //
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    //

                     Text(
              "Yesterday",
              style: TextStyle(color: titleColor, fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    //
                      SizedBox(
                      height: size.height*0.02,
                    ),
                    //
                     for(var i=0;i<2;i++)...[
                      CustomNotificationBox(index: i,)
                    ],
            ],
          ),
        ),
      ),
    );
  }
}
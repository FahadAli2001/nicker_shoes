import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/icons.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/const/shoes_category.dart';
import 'package:nicker_shoes/lib/src/controller/auth_controller/signin_controller.dart';
import 'package:nicker_shoes/lib/src/controller/home_controller/home_controller.dart';
import 'package:nicker_shoes/lib/src/custom/customTextfiled/custom_textfield.dart';
import 'package:nicker_shoes/lib/src/custom/custom_bottom_sheet/custom_bottom_sheet.dart';
import 'package:nicker_shoes/lib/src/custom/custom_shoes_container/custom_shoes_container.dart';
import 'package:nicker_shoes/lib/src/views/singleProduct/single_product_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int categoryIndex = 0;
  HomeController homeController = HomeController();
  @override
  void initState() {
    super.initState();
    // homeController.categoryNames.clear();
    //  homeController.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CustomButtomSheet();
              },
            );
          },
          child: Image.asset(
            menuIcon,
            width: 60,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Store Location",
              style: TextStyle(color: subTtileColor, fontSize: 12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.pin_drop_sharp,
                  color: primaryColor,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "Pakistan",
                  style:
                      TextStyle(color: titleColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Consumer<SignInController>(
            builder: (context, signInController, child) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: InkWell(
                    onTap: () {
                      signInController.signOut(context);
                    },
                    child: const Icon(
                      Icons.logout,
                      size: 30,
                    )),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                width: size.width,
                hintText: "Search for shoes",
                preffixIcon: Icon(
                  Icons.search,
                  color: subTtileColor,
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.04,
              ),
              //
              SizedBox(
                width: size.width,
                height: size.height * 0.06,
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('categories')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SpinKitFadingCircle(
                        itemBuilder: (BuildContext context, int index) {
                          return DecoratedBox(
                            decoration: BoxDecoration(
                              color: index.isEven ? primaryColor : Colors.green,
                            ),
                          );
                        },
                      );
                    }
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: horizontalPadding - 15),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                categoryIndex = index;
                              });
                            },
                            child: Container(
                              height: size.height * 0.06,
                              width: categoryIndex == index
                                  ? size.width * 0.3
                                  : size.width * 0.2,
                              decoration: BoxDecoration(
                                  color: categoryIndex == index
                                      ? primaryColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  shoesCategory[index],
                                  categoryIndex == index
                                      ? Text(
                                          snapshot
                                              .data!.docs[index]["company_name"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.white),
                                        )
                                      : const Text("")
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.05,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Shoes",
                    style: TextStyle(
                        color: titleColor, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
            StreamBuilder<DocumentSnapshot>(
  stream: FirebaseFirestore.instance
      .collection("categories")
      .doc("nike")
      .snapshots(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return SpinKitFadingCircle(
        itemBuilder: (BuildContext context, int index) {
          return const DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          );
        },
      );
    }
    if (snapshot.hasError) {
      return const Text(
        "Error",
        style: TextStyle(color: Colors.black),
      );
    }

    // Accessing data from the DocumentSnapshot
    if (snapshot.hasData && snapshot.data!.exists) {
      var data = snapshot.data!.data() as Map<String, dynamic>;
      List<dynamic> nikeData = data['nike']; // Assuming 'nike' is a list field

      return SizedBox(
        width: size.width,
        height: size.height * 0.35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: nikeData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                         // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => SingleProductScreen(
                            //               image: popularShoes[index],
                            //             )));
                },
                child: CustomShoesContainer(
                  index: index,
                  image: nikeData[index]["image"],
                  name: nikeData[index]["name"],
                  price: nikeData[index]["price"],
                ),
              ),
            );
          },
        ),
      );
    } else {
      return const Text(
        "No Data",
        style: TextStyle(color: Colors.black),
      );
    }
  },
),

              SizedBox(
                height: size.height * 0.02,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arivals",
                    style: TextStyle(
                        color: titleColor, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              SizedBox(
                width: size.width,
                height: size.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularShoes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             const SingleProductScreen()));
                        },
                        child: Card(
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Best Choice",
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "Nike Jordan",
                                        style: TextStyle(
                                            color: titleColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "\$450.00",
                                        style: TextStyle(
                                            color: titleColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    popularShoes[index],
                                    width: 200,
                                    height: 200,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

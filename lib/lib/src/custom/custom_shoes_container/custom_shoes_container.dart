import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/icons.dart';
import 'package:nicker_shoes/lib/src/const/shoes_category.dart';
 

class CustomShoesContainer extends StatelessWidget {
  final int? index;
  const CustomShoesContainer({super.key,this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Card(
                          elevation:
                              10,  
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: size.width * 0.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: size.height,
                                  width: size.width,
                                ),
                                Positioned(
                                    top: size.height * 0.26,
                                    left: size.width * 0.379,
                                    child: Image.asset(
                                      addIcon,
                                      height: 50,
                                      fit: BoxFit.fill,
                                    )),
                                Positioned(
                                    top: 1,
                                    left: 1,
                                    right: 1,
                                    child: Image.asset(
                                      popularShoes[index!],
                                      height: 200,
                                      width: 300,
                                    )),
                                Positioned(
                                  top: size.height * 0.2,
                                  left: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Best Seller",
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
                                )
                              ],
                            ),
                          ),
                        );
  }
}
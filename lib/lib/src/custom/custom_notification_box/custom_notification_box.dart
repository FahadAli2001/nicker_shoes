import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/shoes_category.dart';
 

class CustomNotificationBox extends StatelessWidget {
  final int? index;
  const CustomNotificationBox({super.key,this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return  Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: SizedBox(
                          height: size.height*0.15,
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                         Image.asset(
                                          popularShoes[index!],
                                          width:100,
                                          height:150,
                                        ),
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
                                        Text(
                                              "6 Min Ago",
                                              style: TextStyle(
                                                  color: subTtileColor,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                         ),
                       );
  }
}
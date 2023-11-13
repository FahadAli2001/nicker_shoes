import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/shoes_category.dart';
 

class CustomCartBox extends StatelessWidget {
  final int? index;
  const CustomCartBox({super.key,this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
     return  Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: SizedBox(
                          height: size.height*0.18,
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
                                              "Nike Club Max",
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 18,
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
                                            //
                                             Row(
                                              children: [
                                                Icon(Icons.remove,color:subTtileColor,),
                                                 const SizedBox(
                                              width: 5,
                                            ),
                                                Text(
                                              "1",
                                              style: TextStyle(
                                                  color: titleColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                           const SizedBox(
                                              width: 5,
                                            ),
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundColor: primaryColor,
                                              child:const Center(
                                                child: Icon(Icons.add,
                                                size: 15,
                                                color: Colors.white,),
                                              ),
                                            )
                                              ],
                                            ),
                                          ],
                                        ),
                                       Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                           Text(
                                              "L",
                                              style: TextStyle(
                                                  color: subTtileColor,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            //
                                            Icon(Icons.delete,color: subTtileColor,)
                                        ],
                                       )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                         ),
                       );
  }
}
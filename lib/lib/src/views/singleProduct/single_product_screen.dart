import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/icons.dart';
import 'package:nicker_shoes/lib/src/const/images.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/const/shoes_category.dart';
import 'package:nicker_shoes/lib/src/views/cart/my_cart_screen.dart';
 
class SingleProductScreen extends StatefulWidget {
  final String? image;
  const SingleProductScreen({super.key, this.image});

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mens Shoes",
          style: TextStyle(color: titleColor, fontSize: 18),
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(backBtn)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(shoppingIcon),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.blue.shade100,
          ),
          Positioned(
            top: 2,
            left: 10,
            right: 10,
            child: Image.asset(
              widget.image.toString(),
              height: 250,
            ),
          ),
          Positioned(
            top: size.height * 0.24,
            child: SizedBox(
              height: size.height * 0.65,
              width: size.width,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                      vertical: verticalPadding - 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Best Seller",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Nike Jordan",
                        style: TextStyle(
                            color: titleColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "\$450.00",
                        style: TextStyle(
                            color: titleColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w200),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....",
                        style: TextStyle(color: subTtileColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Gallery",
                        style: TextStyle(
                            color: titleColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          for (var i = 0; i < popularShoes.length; i++) ...[
                            SizedBox(
                              width: 100,
                              height: 70,
                              child: Card(
                                color: Colors.white,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Image.asset(
                                  popularShoes[i],
                                  width: 100,
                                  height: 70,
                                )),
                              ),
                            )
                          ]
                        ],
                      ),
                      //
                      const SizedBox(
                        height: 20,
                      ),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                                color: titleColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "EU",
                                  style: TextStyle(
                                      color: titleColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "US",
                                  style: TextStyle(
                                      color: subTtileColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "UK",
                                  style: TextStyle(
                                      color: subTtileColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Image.asset(shoeSize),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                    color: subTtileColor,
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
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context)
                              =>const MyCartScreen()));
                            },
                            child: Image.asset(addToCart))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/const/const_colors.dart';
import 'package:nicker_shoes/lib/src/const/icons.dart';
import 'package:nicker_shoes/lib/src/const/padding.dart';
import 'package:nicker_shoes/lib/src/const/shoes_category.dart';
 

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Favorite",
          style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: GridView.builder(
            itemCount: popularShoes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                mainAxisExtent: size.height * 0.3,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    SizedBox(
                      height: size.height,
                      width: size.width,
                    ),
                    Positioned(
                        top: 20,
                        left: 20,
                        child: Image.asset(
                          favoriteIcon,
                          height: 40,
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                        top: 1,
                        left: 1,
                        right: 1,
                        child: Image.asset(
                          popularShoes[index],
                          height: 200,
                          width: 300,
                        )),
                    Positioned(
                      top: size.height * 0.2,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                color: titleColor, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "\$450.00",
                            style: TextStyle(
                                color: titleColor, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}

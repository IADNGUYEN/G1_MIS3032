import 'package:flutter/material.dart';
import 'package:g1_project/screens/categories/dress_category_screen.dart';
import 'package:g1_project/screens/categories/mordenshirt_category_screen.dart';
import 'package:g1_project/screens/categories/trousers_category_screen.dart';
import 'package:g1_project/screens/categories/tshirt_category_screen.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Danh mục sản phẩm",
            press: () =>
                Navigator.pushNamed(context, TShirtCategoryScreen.routeName),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/aothun.png",
                category: "Áo thun",
                press: () =>
                    Navigator.pushNamed(context, TShirtCategoryScreen.routeName),
              ),
              SpecialOfferCard(
                image: "assets/images/aokieu.png",
                category: "Áo kiểu",
                press: () =>
                    Navigator.pushNamed(context, MordenShirtCategoryScreen.routeName),
              ),
              SpecialOfferCard(
                image: "assets/images/vay.png",
                category: "Váy",
                press: () =>
                    Navigator.pushNamed(context, DressCategoryScreen.routeName),
              ),
              SpecialOfferCard(
                image: "assets/images/quan.png",
                category: "Quần",
                press: () =>
                    Navigator.pushNamed(context, TrousersCategoryScreen.routeName),
              ),

              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:g1_project/models/Product.dart';
import 'package:g1_project/screens/categories/components/tshirt_products.dart';
import '../../size_config.dart';

class TShirtCategoryScreen extends StatelessWidget {
  static String routeName = "/tshirtcategory";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: TShirtProducts(),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Áo thun",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}

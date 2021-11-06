import 'package:flutter/material.dart';
import 'package:g1_project/models/Product.dart';
import 'package:g1_project/screens/categories/components/tshirt_products.dart';
import '../../size_config.dart';
import 'components/dress_products.dart';
import 'components/trousers_products.dart';

class TrousersCategoryScreen extends StatelessWidget {
  static String routeName = "/trouserscategory";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: TrousersProducts(),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Quần",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}

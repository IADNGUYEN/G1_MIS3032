import 'package:flutter/material.dart';
import 'package:g1_project/screens/categories/components/tshirt_products.dart';
import '../../size_config.dart';
import 'components/mordenshirt_products.dart';

class MordenShirtCategoryScreen extends StatelessWidget {
  static String routeName = "/mordenshirtcategory";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: MordenShirtProducts(),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Áo kiểu",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}

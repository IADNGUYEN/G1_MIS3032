import 'package:flutter/material.dart';
import 'package:g1_project/components/coustom_bottom_nav_bar.dart';
import 'package:g1_project/enum.dart';
import 'package:g1_project/models/Product.dart';
import '../../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

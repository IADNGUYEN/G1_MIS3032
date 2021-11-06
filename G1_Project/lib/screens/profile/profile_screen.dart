import 'package:flutter/material.dart';
import 'package:g1_project/components/coustom_bottom_nav_bar.dart';
import 'package:g1_project/screens/profile/components/body.dart';

import '../../enum.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE53935)),
        ),
      ),
      body: BodyProfile(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}

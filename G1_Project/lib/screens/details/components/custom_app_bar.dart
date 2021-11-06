import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g1_project/screens/cart/cart_screen.dart';


//Thanh app bar trên cùng, có nút back bên trái

class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Color(0xFFE53935),
        ),
        onPressed: () => Navigator.pop(context),
        padding: EdgeInsets.only(left: 20),
      ),
      actions: <Widget>[
        // Container(
        //   padding: EdgeInsets.only(top: 10, bottom: 10),
        //   child: SearchField(),
        // ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/share.svg",
            color: Color(0xFFE53935)),
          onPressed: () {},
          padding: EdgeInsets.only(right: 20)
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg",
            color: Color(0xFFE53935),),
          onPressed: () =>
              Navigator.pushNamed(context, CartScreen.routeName),
          padding: EdgeInsets.only(right: 20),
        ),
      ],
    );
  }
}

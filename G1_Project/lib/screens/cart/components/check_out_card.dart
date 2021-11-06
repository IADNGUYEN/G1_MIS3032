import 'package:g1_project/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g1_project/screens/cart/cart_screen.dart';
import 'package:g1_project/screens/home/home_screen.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: (15 / 375.0) * MediaQuery.of(context).size.width,
        horizontal: (30 / 375.0) * MediaQuery.of(context).size.width,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: (40 / 375.0) * MediaQuery.of(context).size.width,
                  width: (40 / 375.0) * MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/images/receipt.svg"),
                ),
                Spacer(),
                const SizedBox(width: 10),
              ],
            ),
            SizedBox(height: (20 / 812.0) * MediaQuery.of(context).size.height),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Tổng tiền:\n",
                    children: [
                      TextSpan(
                        text: "\đ${totalPrice(cartList)}00",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: (190 / 375.0) * MediaQuery.of(context).size.width,
                  child: DefaultButton(
                    text: "Thanh toán",
                    press: () async {
                      showDialog(
                          context: context,
                          builder: (_) => const AlertDialog(
                            title: Text('Thông báo'),
                            content: Text('Đã đặt hàng thành công!!!'),
                          )
                      );
                      cartList.clear();
                      await Future.delayed(const Duration(seconds: 2), () {});
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: (56 / 812.0) * MediaQuery.of(context).size.height,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: Color(0xFFFF7643),
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: (20 / 375.0) * MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

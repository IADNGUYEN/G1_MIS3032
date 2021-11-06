import 'package:flutter/material.dart';
import 'package:g1_project/constants.dart';
import 'package:g1_project/models/Cart.dart';
import 'package:g1_project/screens/details/components/counter.dart';

import 'counter.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all((10 / 375.0) * MediaQuery.of(context).size.width),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.image),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.pname,
              style: TextStyle(color: Colors.black, fontSize: 19),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: "đ${cart.product.price}.000",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF7643),
                        fontSize: 18
                    ),
                    children: [
                      TextSpan(
                          text: " x${cart.amount}",
                          style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
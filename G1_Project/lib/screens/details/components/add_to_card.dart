import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g1_project/models/Cart.dart';
import 'package:g1_project/models/Product.dart';
import '../../../size_config.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20.0),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: Color(0xFFE53935),
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/chat.svg",
                color: Color(0xFFE53935),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: getProportionateScreenHeight(56),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  primary: Colors.white,
                  backgroundColor: Color(0xFFE53935),
                ),
                onPressed: ()  {
                    cartList.add(Cart(product: product, amount: 1));
                },
                child: Text(
                  "🛒 Add To Cart",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
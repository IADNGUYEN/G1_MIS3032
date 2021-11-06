/*
import 'package:flutter/material.dart';
import 'package:g1_project/models/Cart.dart';

class CartCounterInCart extends StatefulWidget {
  final Cart cart;
  CartCounterInCart({required this.cart});

  @override
  _CartCounterInCartState createState() => _CartCounterInCartState(cart: cart);
}

class _CartCounterInCartState extends State<CartCounterInCart> {
  final Cart cart;
  _CartCounterInCartState({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (cart.amount > 1) {
              setState(() {
                cart.amount--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 / 2),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            cart.amount.toString().padLeft(2, "0"),
            style:
            TextStyle(
                fontSize: 18
            ),
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
            setState(() {
              cart.amount++;
            });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, required Function press}) {
    return SizedBox(
      width: 27,
      height: 25,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: () {},
        child: Icon(icon, size: 15,),
      ),
    );
  }
}*/

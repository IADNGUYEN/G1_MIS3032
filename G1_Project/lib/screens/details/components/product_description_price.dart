import 'package:g1_project/models/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../../size_config.dart';

//Phần tên sản phẩm và mô tả sản phẩm

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, bottom: 10),
          child: Text(
            product.pname,
            style:
            TextStyle(
              fontFamily: "Times New Roman",
              fontSize: 25
            ),
          ),
        ),

         Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "🏷 ₫" + product.price.toString() + ".000",
                style:
                TextStyle(
                    color: Colors.red,
                    fontSize: 22,
                    fontFamily: "Times New Roman"
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(20),
          ),
          child: Text(
            "---------------------------------------------------------------------------" ,
            style:
            TextStyle(
              fontFamily: "Times New Roman",
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE53935),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
            bottom: 10
          ),
          child: Text(
            "✅ Thông tin sản phẩm:" ,
            style:
            TextStyle(
                fontFamily: "Times New Roman",
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(20),
          ),
          child: Text(
            product.description,
            style:
            TextStyle(
                fontFamily: "Times New Roman",
                fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}

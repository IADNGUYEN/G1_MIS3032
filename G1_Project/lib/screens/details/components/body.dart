import 'package:g1_project/models/Product.dart';
import 'package:g1_project/screens/details/components/product_description_price.dart';
import 'package:g1_project/screens/details/components/product_images.dart';
import 'package:flutter/material.dart';

import 'top_rounded_container.dart';


class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

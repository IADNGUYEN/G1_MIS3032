import 'package:g1_project/screens/details/components/body.dart';
import 'package:flutter/material.dart';

import '../../models/Product.dart';
import '../../size_config.dart';
import 'components/add_to_card.dart';
import 'components/custom_app_bar.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
    ModalRoute
        .of(context)!
        .settings
        .arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFFFEBEE),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(),
      ),
      body: Body(product: agrs.product),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.screenWidth * 0.15,
            right: SizeConfig.screenWidth * 0.15,
          ),
          child: AddToCart(product: agrs.product)
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
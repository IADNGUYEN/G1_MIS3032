import 'package:g1_project/models/Product.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

//Phần hình ảnh

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.product.pid.toString(),
              child: Image.asset(widget.product.image),
            ),
          ),
        ),
      ],
    );
  }
}

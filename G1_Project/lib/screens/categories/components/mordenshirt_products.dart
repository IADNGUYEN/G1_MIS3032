import 'package:g1_project/components/product_card.dart';
import 'package:g1_project/constants.dart';
import 'package:g1_project/models/Product.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MordenShirtProducts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Products();
}

class _Products extends State<MordenShirtProducts> {

  List<Product> _products = [];

  @override
  void initState() {
    super.initState();
    _fetch();
  }

  Future<void> _fetch() async {
    const url = 'http://192.168.1.6:3000/mordenshirt';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<Product> list = [];
      data["mordenShirtList"].forEach((element) {
        final product = new Product(pid: element['pid'],
            cid: element['cid'],
            amount: element['amount'],
            pname: element['pname'],
            description: element['description'],
            image: element['image'],
            size: element['size'],
            price: element['price'],
            dateCreate: element['dateCreate']);
        list.add(product);
      });
      setState(() => _products = list);
    }


    // setState(() => _products = data);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 20),
            child: GridView.builder(
                itemCount: _products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ProductCard(
                  product: _products[index],
                )),
          ),
        ),
      ],
    );
  }
}


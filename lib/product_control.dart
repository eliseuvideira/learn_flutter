import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function onAddProduct;

  ProductControl({this.onAddProduct});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Add Product'),
      onPressed: () {
        onAddProduct({'title': 'Chocolat', 'image': 'assets/food.jpg'});
      },
    );
  }
}

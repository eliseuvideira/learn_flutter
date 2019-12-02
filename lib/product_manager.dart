import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  var _products = ['FoodTester'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text('Add Product'),
            onPressed: () {
              setState(() => _products.add('New Item'));
            },
          ),
        ),
        Products(_products),
      ],
    );
  }
}

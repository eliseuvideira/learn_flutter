import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('[Products] constructor()');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products] build()');
    return Column(
      children: products
          .map(
            (product) => Card(
              child: Column(
                children: [
                  Image.asset('assets/food.jpg'),
                  Text(product),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}

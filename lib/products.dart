import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products({this.products = const []}) {
    print('[Products] constructor()');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/food.jpg'),
          Text(products[index]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('[Products] build()');
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}

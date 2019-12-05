import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
    print('[Products] constructor()');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: [
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductPage(
                      products[index]['title'],
                      products[index]['image'],
                    ),
                  ),
                ).then((bool value) {
                  if (value) {
                    deleteProduct(index);
                  }
                }),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('[Products] build()');
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Center(child: Text('No products found.'));
  }
}

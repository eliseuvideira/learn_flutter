import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  ProductCreatePage(this.addProduct);

  final Function addProduct;

  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String title;
  String description;
  double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            onChanged: (String value) {
              setState(() {
                title = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Description'),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                description = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Price'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                price = double.parse(value);
              });
            },
          ),
          RaisedButton(
            child: Text('Save'),
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': title,
                'description': description,
                'price': price,
                'image': 'assets/food.jpg'
              };
              widget.addProduct(product);
            },
          )
        ],
      ),
    );
  }
}

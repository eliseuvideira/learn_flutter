import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String title;
  String description;
  double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String value) {
            setState(() {
              title = value;
            });
          },
        ),
        TextField(
          maxLines: 4,
          onChanged: (String value) {
            setState(() {
              description = value;
            });
          },
        ),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (String value) {
            setState(() {
              price = double.parse(value);
            });
          },
        ),
      ],
    );
  }
}

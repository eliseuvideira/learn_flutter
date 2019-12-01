import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Playground'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text('Add Product'),
                onPressed: () {},
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.asset('assets/food.jpg'),
                  Text('Food Paradise'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

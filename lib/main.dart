import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _products = ['FoodTester'];

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
            Column(
              children: _products
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
            ),
          ],
        ),
      ),
    );
  }
}

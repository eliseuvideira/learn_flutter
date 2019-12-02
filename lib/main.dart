import 'package:flutter/material.dart';
import './product_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Playground'),
        ),
        body: ProductManager('Food Tester'),
      ),
    );
  }
}

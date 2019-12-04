import 'package:flutter/material.dart';
import './product_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    print('[MyApp] build()');
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrangeAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Playground'),
        ),
        body: ProductManager('Food Tester'),
      ),
    );
  }
}

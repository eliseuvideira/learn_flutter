import 'package:flutter/material.dart';
import './pages/auth.dart';

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
      home: AuthPage(),
    );
  }
}

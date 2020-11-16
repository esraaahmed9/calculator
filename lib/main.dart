import 'package:flutter/material.dart';
import 'package:calculator/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"Calculator App",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.lightGreen),
      home: HomePage(),

    );
  }
}
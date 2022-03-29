import 'package:flutter/material.dart';
import 'package:app_challenge/pages/page1.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MainPage(),
      
    );
  }
}
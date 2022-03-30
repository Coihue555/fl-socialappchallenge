import 'package:app_challenge/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:app_challenge/pages/pages.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Header2(),
      home: MainPage(),
      
    );
  }
}
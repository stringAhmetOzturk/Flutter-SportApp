import 'package:flutter/material.dart';
import 'package:livefairsports/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Live Fair Sports',
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}

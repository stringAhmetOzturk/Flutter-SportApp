import 'package:flutter/material.dart';
import 'package:livefairsports/screens/sportselection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: ElevatedButton(
            child: Text("Resim"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SportSelection()),
              );
            }),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:livefairsports/screens/favorites.dart';

class LiveMatches extends StatefulWidget {
  const LiveMatches({Key? key}) : super(key: key);

  @override
  State<LiveMatches> createState() => _LiveMatchesState();
}

class _LiveMatchesState extends State<LiveMatches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: ElevatedButton(
            child: Text("LiveMatches"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Favorites()),
              );
            }),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:livefairsports/screens/popularevents.dart';

class SportSelection2 extends StatefulWidget {
  final String sport;
  const SportSelection2({Key? key, required this.sport}) : super(key: key);

  @override
  State<SportSelection2> createState() => _SportSelection2State();
}

class _SportSelection2State extends State<SportSelection2> {
  List<String> categories = [
    "Popular",
    "LIVE Matches",
    "Favorite Matches",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.sport),
        backgroundColor: Color(0xFF252525),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 65,
                  child: TextButton(
                      child: Row(children: [
                        Text(
                          categories[index],
                          style: TextStyle(color: Color(0xFF4F4F4F)),
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xFFFFB300),
                        )
                      ]),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PopularEvents(
                                  selection: categories[index],
                                  sport: widget.sport)),
                        );
                      }),
                );
              },
              itemCount: categories.length,
            ))
          ],
        ),
      )),
    );
  }
}

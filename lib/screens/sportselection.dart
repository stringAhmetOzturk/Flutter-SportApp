import 'package:flutter/material.dart';
import 'package:livefairsports/screens/popularevents.dart';
import 'package:livefairsports/screens/sportselection2.dart';

class SportSelection extends StatefulWidget {
  const SportSelection({Key? key}) : super(key: key);

  @override
  State<SportSelection> createState() => _SportSelectionState();
}

class _SportSelectionState extends State<SportSelection> {
  List<String> categories = [
    "Football",
    "Hentbol",
    "Basketbol",
    "Voleybol",
    "Voleybol",
    "Voleybol",
    "Voleybol",
    "Voleybol",
    "Voleybol",
    "Voleybol",
    "Voleybol",
    "Voleybol",
    "Voleybol",
    "Voleybol"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF252525),
        centerTitle: true,
        title: Text(
          "Main Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
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
                              builder: (context) =>
                                  SportSelection2(sport: categories[index])),
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

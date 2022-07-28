import 'package:flutter/material.dart';

class ScoreWidget extends StatefulWidget {
  const ScoreWidget({Key? key}) : super(key: key);

  @override
  State<ScoreWidget> createState() => _ScoreWidgetState();
}

class _ScoreWidgetState extends State<ScoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width / 5,
              color: Color(0xFFF2F2F2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "13.07",
                    style: TextStyle(
                        color: Color(0XFF464646), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "15.45",
                    style: TextStyle(
                        color: Color(0XFFA0A0A0), fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.ac_unit_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text("data")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.ac_unit_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text("data")
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Text("0:0"),
                  SizedBox(width: 20),
                  Icon(
                    Icons.star_rounded,
                    color: Color(0XFFB9B9B9),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              alignment: Alignment.center,
              color: Color(0XFFE8E8E8),
              child: Text(
                "3.56",
                style: TextStyle(
                    color: Color(0XFFFFB300), fontWeight: FontWeight.bold),
              ),
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              alignment: Alignment.center,
              color: Color(0XFFE8E8E8),
              child: Text(
                "2.11",
                style: TextStyle(
                    color: Color(0XFFFFB300), fontWeight: FontWeight.bold),
              ),
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              alignment: Alignment.center,
              color: Color(0XFFE8E8E8),
              child: Text(
                "4.8",
                style: TextStyle(
                    color: Color(0XFFFFB300), fontWeight: FontWeight.bold),
              ),
              height: 30,
            ),
          ],
        )
      ],
    ));
  }
}

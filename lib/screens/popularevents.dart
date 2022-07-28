import 'package:flutter/material.dart';
import 'package:livefairsports/screens/livematches.dart';
import 'package:livefairsports/widgets/scorewidget.dart';

class PopularEvents extends StatefulWidget {
  final String sport;
  final String selection;
  const PopularEvents({Key? key, required this.sport, required this.selection})
      : super(key: key);

  @override
  State<PopularEvents> createState() => _PopularEventsState();
}

class _PopularEventsState extends State<PopularEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.sport),
        backgroundColor: Color(0xFF252525),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 42,
            child: Center(
                child: Text(
              widget.selection,
              style: TextStyle(
                  color: Color(0xFF515151), fontWeight: FontWeight.bold),
            )),
            color: Color(0xFFC6C6C6),
          ),
          ScoreWidget()
        ],
      ),
    );
  }
}

import 'package:ask4libs/widgets/ScoreWidget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({this.id, this.name, this.description, this.score});

  final String id;
  final String name;
  final String description;
  final String score;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.5)),
            border: Border.all(color: Colors.black26),
            color: Colors.white),
        margin: EdgeInsets.all(2.5),
        child: Row(children: <Widget>[
          Container(
              padding: EdgeInsets.all(5),
              child: Image.asset(
                'assets/images/flutter_logo.png',
                width: 90,
              )),
          Container(
              padding: EdgeInsets.all(5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ScoreWidget(score: score, id: id),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
                        child: Text(
                          this.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
                        child: Text(this.description)),
                  ]))
        ]));
  }
}

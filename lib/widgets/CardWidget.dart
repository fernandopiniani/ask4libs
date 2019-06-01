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
          Expanded(
              flex: 2,
              child: Container(
                  padding: EdgeInsets.all(5),
                  child: Image.asset('assets/images/flutter_logo.png'))),
          Expanded(
              flex: 6,
              child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ScoreWidget(score: score, id: id),
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
                            child: Text(
                              this.name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
                            width: 100,
                            child: Text(
                              this.description,
                              overflow: TextOverflow.ellipsis,
                            )),
                      ])))
        ]));
  }
}

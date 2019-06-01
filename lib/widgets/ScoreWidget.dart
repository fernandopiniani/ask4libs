import 'package:ask4libs/bloc/packages.bloc.dart';
import 'package:flutter/material.dart';

class ScoreWidget extends StatelessWidget {
  ScoreWidget({this.id, this.score});

  final String id;
  final String score;

  @override
  Widget build(BuildContext context) {
    PackagesBLoC bloc = PackagesBLoC();

    return Container(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  score,
                  style: TextStyle(color: Colors.orange),
                )),
            InkWell(
                onTap: () {
                  bloc.addScore(id);
                },
                child: Image.asset(
                  'assets/images/fire_icon.png',
                  width: 15,
                )),
          ],
        ));
  }
}

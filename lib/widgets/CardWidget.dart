import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({this.name, this.description});

  final String name;
  final String description;

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
                    Text(
                      this.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                  ]))
        ]));
  }
}

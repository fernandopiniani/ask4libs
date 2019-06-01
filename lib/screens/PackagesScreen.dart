import 'package:ask4libs/widgets/CardWidget.dart';
import 'package:flutter/material.dart';

class PackagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Packages'),
        ),
        body: Container(
            decoration: BoxDecoration(color: Colors.black12),
            child: ListView(children: <Widget>[
              CardWidget(
                name: 'AWS Cognito',
                description: 'Need Package AWS Cognito',
              ),
              CardWidget(
                name: 'Google Maps 3D',
                description: 'Need Package Google Maps 3d',
              ),
            ])),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add Package',
          child: Icon(Icons.add),
        ));
  }
}

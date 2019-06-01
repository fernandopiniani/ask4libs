import 'package:flutter/material.dart';
import 'package:ask4libs/bloc/packages.bloc.dart';
import 'package:ask4libs/model/package.dart';

class PackagesDetailScreen extends StatefulWidget {
  final Package package;
  PackagesDetailScreen(this.package);

  @override
  State<StatefulWidget> createState() => new _PackagesDetailScreen();
}

class _PackagesDetailScreen extends State<PackagesDetailScreen> {
  final PackagesBLoC bloc = PackagesBLoC();

  TextEditingController _nameController;
  TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();

    _nameController = new TextEditingController(text: widget.package.name);
    _descriptionController = new TextEditingController(text: widget.package.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Package Details')),
      body: Container(
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
              enabled: false,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
              enabled: false,
              maxLines: null
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
          ],
        ),
      ),
    );
  }
}
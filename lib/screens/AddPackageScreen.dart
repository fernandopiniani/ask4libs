import 'package:flutter/material.dart';
import 'package:ask4libs/bloc/packages.bloc.dart';
import 'package:ask4libs/model/package.dart';

class AddPackageScreen extends StatefulWidget {
  final Package package;
  AddPackageScreen(this.package);

  @override
  State<StatefulWidget> createState() => new _AddPackageScreen();
}

class _AddPackageScreen extends State<AddPackageScreen> {
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
      appBar: AppBar(title: Text('Add Package')),
      body: Container(
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            RaisedButton(
              child: Text('Add'),
              onPressed: () { bloc.createPackage(_nameController.text, _descriptionController.text)
                  .then((_) { Navigator.pop(context); });
              },
            ),
          ],
        ),
      ),
    );
  }
}


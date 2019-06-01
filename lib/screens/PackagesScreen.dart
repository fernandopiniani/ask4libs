import 'package:ask4libs/bloc/packages.bloc.dart';
import 'package:ask4libs/model/package.dart';
import 'package:ask4libs/widgets/CardWidget.dart';
import 'package:ask4libs/screens/AddPackageScreen.dart';
import 'package:ask4libs/screens/PackagesDetailScreen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class PackagesScreen extends StatelessWidget {
  final PackagesBLoC bloc = PackagesBLoC();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Packages'),
        ),
        body: Container(
            decoration: BoxDecoration(color: Colors.black12),
            child: StreamBuilder(
                stream: bloc.getPackages(),
                builder: (context, snap) {
                  if (snap.hasData &&
                      !snap.hasError &&
                      snap.data.snapshot.value != null) {
                    DataSnapshot snapshot = snap.data.snapshot;
                    final List<Package> _list =
                        Package.getFromSnapshotList(snapshot)
                          ..sort((a, b) =>
                              int.parse(b.score).compareTo(int.parse(a.score)));

                    return ListView.builder(
                        itemCount: _list.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () => _seePackageDetails(context,
                                  _list[index].name, _list[index].description),
                              child: CardWidget(
                                  id: _list[index].id,
                                  name: _list[index].name,
                                  description: _list[index].description,
                                  score: _list[index].score));
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                })),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _createNewPackage(context),
          tooltip: 'Add Package',
          child: Icon(Icons.add),
        ));
  }

  void _createNewPackage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddPackageScreen(new Package())),
    );
  }

  void _seePackageDetails(
      BuildContext context, String name, String description) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PackagesDetailScreen(
              new Package(name: name, description: description))),
    );
  }
}

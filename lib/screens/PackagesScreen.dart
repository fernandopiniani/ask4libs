import 'package:ask4libs/bloc/packages.bloc.dart';
import 'package:ask4libs/model/package.dart';
import 'package:ask4libs/widgets/CardWidget.dart';
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
                stream: bloc.packagesReference.onValue,
                builder: (context, snap) {
                  if (snap.hasData &&
                      !snap.hasError &&
                      snap.data.snapshot.value != null) {
                    DataSnapshot snapshot = snap.data.snapshot;
                    final List<Package> _list =
                        Package.getFromSnapshotList(snapshot);

                    return ListView.builder(
                        itemCount: _list.length,
                        itemBuilder: (context, index) {
                          return CardWidget(
                            name: _list[index].name,
                            description: _list[index].description,
                          );
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                })),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add Package',
          child: Icon(Icons.add),
        ));
  }
}

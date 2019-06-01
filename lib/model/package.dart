import 'package:firebase_database/firebase_database.dart';

class Package {
  String id;
  String name;
  String description;
  String score;
  String createdUser;

  Package({this.id, this.name, this.description, this.score, this.createdUser});

  static List<Package> getFromSnapshotList(DataSnapshot snapshot) {
    List<Package> _list = new List<Package>();
    snapshot.value.forEach((key, value) {
      _list.add(Package(
          id: key,
          name: value['name'],
          description: value['description'],
          score: value['score'],
          createdUser: value['createdUser']));
    });
    return _list;
  }

  static Package getFromSnapshot(DataSnapshot snapshot) {
    return Package(
        id: snapshot.value['id'],
        name: snapshot.value['name'],
        description: snapshot.value['description'],
        score: snapshot.value['score'],
        createdUser: snapshot.value['createdUser']);
  }
}

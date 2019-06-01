import 'package:firebase_database/firebase_database.dart';

class Package {
  String id;
  String name;
  String description;
  String score;
  String createdUser;
  String dateAdded;

  Package({this.id, this.name, this.description, this.score, this.createdUser, this.dateAdded});

  static List<Package> getFromSnapshotList(DataSnapshot snapshot) {
    List<Package> _list = new List<Package>();
    for (var item in snapshot.value) {
      _list.add(Package(
          id: snapshot.key,
          name: item['name'],
          description: item['description'],
          score: item['score'],
          createdUser: item['createdUser'],
          dateAdded: item['dateAdded']));
    }
    return _list;
  }
}

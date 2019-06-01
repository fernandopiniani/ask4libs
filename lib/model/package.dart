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
    for (var item in snapshot.value) {
      _list.add(Package(
          id: item['id'],
          name: item['name'],
          description: item['description'],
          score: item['score'],
          createdUser: item['createdUser']));
    }
    return _list;
  }
}

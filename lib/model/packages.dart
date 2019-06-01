import 'package:firebase_database/firebase_database.dart';

class Packages {
  String _id;
  String _name;
  String _description;
  int _score;
  String _createdUser;

  Packages(this._id, this._name, this._description, this._score, this._createdUser);

  Packages.map(dynamic obj) {
    this._id = obj['id'];
    this._name = obj['name'];
    this._description = obj['description'];
    this._score = obj['score'];
    this._createdUser = obj['createdUser'];
  }

  String get id => _id;
  String get title => _name;
  String get description => _description;
  int get score => _score;
  String get createdUser => _createdUser;

  Packages.fromSnapshot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _name = snapshot.value['name'];
    _description = snapshot.value['description'];
    _score = snapshot.value['score'];
    _createdUser = snapshot.value['createdUser'];
  }
}
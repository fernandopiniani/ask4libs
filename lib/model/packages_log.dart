import 'package:firebase_database/firebase_database.dart';

class PackagesLog {
  String _id;
  String _name;
  String _user;
  DateTime _dateAdded;

  PackagesLog(this._id, this._name, this._user, this._dateAdded);

  PackagesLog.map(dynamic obj) {
    this._id = obj['id'];
    this._name = obj['name'];
    this._user = obj['user'];
    this._dateAdded = obj['dateAdded'];
  }

  String get id => _id;
  String get title => _name;
  DateTime get description => _dateAdded;
  String get createdUser => _user;

  PackagesLog.fromSnapshot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _name = snapshot.value['name'];
    _dateAdded = snapshot.value['user'];
    _user = snapshot.value['dateAdded'];
  }
}
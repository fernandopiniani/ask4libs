import 'package:ask4libs/model/package.dart';
import 'package:firebase_database/firebase_database.dart';

class PackagesBLoC {
  final _packagesReference =
      FirebaseDatabase.instance.reference().child('Packages');

  Stream getPackages() {
    return _packagesReference.onValue;
  }

  void addScore(String id) {
    _packagesReference.child(id).once().then((DataSnapshot snapshot) {
      final Package package = Package.getFromSnapshot(snapshot);
      _packagesReference
          .child(id)
          .update({'score': (int.parse(package.score) + 1).toString()});
    });
  }

  Future<void> createPackage(String name, String description) {
    return _packagesReference.push().set({
      'name': name,
      'description': description,
      'score': '0',
      'createdUser': 'Rafael',
      'dateAdded': '2019-06-01'
    });
  }
}

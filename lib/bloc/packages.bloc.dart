import 'package:firebase_database/firebase_database.dart';

class PackagesBLoC {
  final packagesReference =
      FirebaseDatabase.instance.reference().child('Packages');

  Future<void> createPackage(String name, String description) {
    return packagesReference.push().set({
      'name': name,
      'description': description,
      'score': '0',
      'createdUser': 'Rafael',
      'dateAdded': '2019-06-01'
    });
  }
}

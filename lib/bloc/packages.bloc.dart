import 'package:firebase_database/firebase_database.dart';

class PackagesBLoC {
  final packagesReference =
      FirebaseDatabase.instance.reference().child('Packages');
}

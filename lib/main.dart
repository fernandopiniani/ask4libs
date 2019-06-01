 import 'package:ask4libs/screens/PackagesScreen.dart';
import 'package:flutter/material.dart';
import 'package:ask4libs/screens/LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask 4 libs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PackagesScreen(),
    );
  }
}

import 'package:flutter/material.dart';

//import 'home.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Classe raiz do aplicativo
  @override
  Widget build(BuildContext context) {
    // MaterialApp auxilia na estilização do aplicativo
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _Login(),
    );
  }
}

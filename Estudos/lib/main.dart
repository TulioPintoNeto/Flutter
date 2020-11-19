import 'package:flutter/material.dart';

<<<<<<< Updated upstream
//import 'home.dart';
=======
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
      home: _Login(),
=======
      home: Login(),
>>>>>>> Stashed changes
    );
  }
}

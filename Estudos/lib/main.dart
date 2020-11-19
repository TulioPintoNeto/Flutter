import 'package:flutter/material.dart';

// Imports das páginas importantes para as rotas
import 'login.dart';
import 'home.dart';

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
      /* Aqui chamamos a tela de Login (é necessário mais tarde fazer uma 
      *  verificação se já está logado para redirecionar para Home)
      */
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home(),
      },
    );
  }
}

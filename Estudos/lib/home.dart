import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar com o título da rede social
      appBar: AppBar(
        title: Text("Rede Social"),
      ),
    );
  }
}

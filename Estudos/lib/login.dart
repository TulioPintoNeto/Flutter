import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: TextField(
                    onChanged: (textoDigitado) {
                      email = textoDigitado;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: TextField(
                    onChanged: (textoDigitado) {
                      password = textoDigitado;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: RaisedButton(
                  onPressed: () {
                    if (email == "teste@gmail.com" && password == "123456") {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

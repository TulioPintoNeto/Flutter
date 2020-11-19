import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  /* Variáveis a serem utilizadas pelo login (aqui devemos ainda verificar qual 
  *  o tipo de segurança o Flutter usa e se há necessidade de alguma proteção
  */
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
              // Campo de e-mail
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
              // Campo de password
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
              // Campo do botão de login
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: RaisedButton(
                  onPressed: () {
                    if (email == "teste@gmail.com" && password == "123456") {
                      Navigator.of(context).push(
                          // Redireciona para Home
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

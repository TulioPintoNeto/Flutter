import 'package:flutter/material.dart';

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

  Widget _body() {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Container(
              width: 100,
              height: 100,
              child: Image.asset('images/logo.png'),
            ),
            Container(height: 30),
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
                ),
              ),
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
                ),
              ),
            ),
            // Campo do botão de login
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: RaisedButton(
                onPressed: () {
                  if (email == "teste@gmail.com" && password == "123456") {
                    // Redireciona para Home
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(color: Colors.white.withOpacity(0.1)),
          _body(),
        ],
      ),
    );
  }
}

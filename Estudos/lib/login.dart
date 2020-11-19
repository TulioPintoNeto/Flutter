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

  // Aqui contém o campo de Input para o e-mail do formulário
  Widget _inputEmail() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: TextField(
        onChanged: (textoDigitado) {
          email = textoDigitado;
        },
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          labelText: "E-mail",
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
          ),
        ),
      ),
    );
  }

  // Aqui contém o campo de Input para o password do formulário
  Widget _inputPass() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: TextField(
        onChanged: (textoDigitado) {
          password = textoDigitado;
        },
        obscureText: true,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          labelText: "Password",
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
          ),
        ),
      ),
    );
  }

  // Aqui contém o botão de login
  Widget _buttonLogin() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: RaisedButton(
        onPressed: () {
          if (email == "teste@gmail.com" && password == "123456") {
            // Redireciona para Home
            Navigator.of(context).pushReplacementNamed('/home');
          }
        },
        color: Colors.indigoAccent,
        child: Container(
          width: 250,
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  // Aqui contém o body, inclusos logo, inputs e botão de login
  Widget _body() {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Theme(
          data: ThemeData(
            primaryColor: Colors.white70,
            primaryColorDark: Colors.white70,
            hintColor: Colors.white70,
          ),
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
              _inputEmail(),
              // Campo de password
              _inputPass(),
              // Campo do botão de login
              _buttonLogin(),
            ],
          ),
        ),
      ),
    );
  }

  /* Aqui retornamos a página de login para o main.dart e temos um Stack para
  * utilizar um background image  
  */
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

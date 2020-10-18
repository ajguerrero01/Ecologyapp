import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Center(
          child: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: [
              _imgLogo(),
              SizedBox(height: 8.0),
              _crearEmail(),
              SizedBox(height: 8.0),
              _crearpass(),
              SizedBox(height: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Olvide mi Contraseña',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              _boton(),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('¿No tienes una cuenta?'),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/register');
                    },
                    child: Text(
                      'Regístrate ahora',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _boton() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 108, vertical: 18),
        child: Text('Acceder'),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
      elevation: 0.0,
      splashColor: Colors.amber,
      color: Colors.green,
      textColor: Colors.white,
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/drawer');
      },
    );
  }

  Widget _imgLogo() {
    return Container(
      child: Image.asset(
        'assets/imagen/login.jpg',
        height: 300.0,
        width: 300.0,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _crearEmail() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Correo Electronico',
            hintText: 'usuario@eco.com',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            prefixIcon: Icon(Icons.mail_outline)),
      ),
    );
  }

  Widget _crearpass() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Contraseña',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          prefixIcon: Icon(Icons.lock_open),
        ),
        obscureText: true,
        autocorrect: false,
      ),
    );
  }
}

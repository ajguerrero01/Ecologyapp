import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  void initState() {
    super.initState();
  }

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
              _crearNombre(),
              SizedBox(height: 8.0),
              _crearEmail(),
              SizedBox(height: 8.0),
              _crearpass(),
              SizedBox(height: 30.0),
              _boton(),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('¿Ya tienes una cuenta?'),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: Text(
                      'Acceder',
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
        child: Text('Registrar'),
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
        'assets/imagen/register.jpg',
        height: 300.0,
        width: 300.0,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _crearNombre() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Nombre Completo',
            hintText: 'Pedro Lopez',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            prefixIcon: Icon(Icons.supervised_user_circle)),
      ),
    );
  }

  Widget _crearEmail() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Correo Electronico',
            hintText: 'mail@ecology.com',
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
          hintText: '8 digitos minimo',
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

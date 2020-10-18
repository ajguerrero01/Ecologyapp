import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  Perfil({Key key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: perfil());
  }

  Widget perfil() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Actualiza tus datos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(height: 24, width: 24)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 65,
                child: ClipOval(
                  child: Icon(
                    Icons.perm_identity,
                    size: 64,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ))
            ],
          ),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              _crearNombre(),
              SizedBox(height: 10.0),
              _crearemail(),
              SizedBox(height: 10.0),
              _creardescripcion(),
              SizedBox(height: 10.0),
              _creartelefono(),
              SizedBox(height: 10.0),
              _boton(),
            ],
          ),
        ))
      ],
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

  Widget _crearemail() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Correo Electroníco',
            hintText: 'mail@ecology.com',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            prefixIcon: Icon(Icons.mail)),
      ),
    );
  }

  _creardescripcion() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Acerca de mi',
            hintText: 'Intereses con el medio ambiente',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            prefixIcon: Icon(Icons.pan_tool)),
        maxLines: 2,
      ),
    );
  }

  Widget _creartelefono() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Telefono',
            hintText: '+1.809.123.4567',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            prefixIcon: Icon(Icons.phone)),
      ),
    );
  }

  Widget _boton() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 142, vertical: 23),
        child: Text('Guardar'),
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
}

import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/imagen/logo.jpg',
                height: 300.0,
                width: 300.0,
              ),
              SizedBox(height: 10.0),
              Text(
                'Empecemos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              SizedBox(height: 30.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Unete A Nuestra Causa Y Apoya El Medio Ambiente A Nuestra Causa Y Apoya El Medio Ambiente',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 50.0),
                child: RaisedButton(
                  disabledColor: Colors.amber,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 20.0),
                        Text(
                          'Crear una Cuenta',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  splashColor: Colors.amber,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/register');
                  },
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 50.0),
                child: RaisedButton(
                  disabledColor: Colors.amber,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 20.0),
                        Text(
                          'Ingresar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  splashColor: Colors.green,
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                ),
              ),
            ],
          ),
        )));
  }
}

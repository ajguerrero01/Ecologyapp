import 'package:flutter/material.dart';

class Acerca extends StatelessWidget {
  const Acerca({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/imagen/logo.jpg',
              height: 190.0,
              width: 190.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Acerca',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Diseño inicial de la propuesta para la app Ecology app, la cual esta creada para la conciencia ecologica de los usuarios',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Desarrollada por:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Pedro Andres Rivas \n José Antonio Guerrero Velez \n Enmanuel Antonio Suárez Álvarez',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Facilitador:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Maikel Aparicio',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
          ],
        )),
      ),
    );
  }
}

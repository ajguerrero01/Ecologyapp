import 'package:flutter/material.dart';

class Publicaciones extends StatelessWidget {
  const Publicaciones({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Crear Publicaciones'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}

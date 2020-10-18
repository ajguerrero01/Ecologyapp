import 'package:ecology_app/pages/acerca.dart';
import 'package:ecology_app/pages/configuraciones.dart';
import 'package:ecology_app/pages/crearPublicaciones.dart';
import 'package:ecology_app/pages/foro.dart';
import 'package:ecology_app/pages/home.dart';
import 'package:ecology_app/pages/perfil.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int _selectDrawerItem = 0;

  _getDrawerItem(int i) {
    switch (i) {
      case 0:
        return Home();
      case 1:
        return ForoPage();
      case 2:
        return Publicaciones();
      case 3:
        return Perfil();
      case 4:
        return Configuracion();
      case 5:
        return Acerca();
    }
  }

  _onSelectItemDrawer(int i) {
    setState(() {
      _selectDrawerItem = i;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecology App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Maikel Aparicio'),
              accountEmail: Text('Maikel@Uapa.edu.do'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green[300],
                child: Text(
                  'MA',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              leading: Icon(Icons.home),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectItemDrawer(0);
              },
            ),
            ListTile(
              title: Text('Foro'),
              leading: Icon(Icons.comment),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onSelectItemDrawer(1);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Crear Publicación'),
              leading: Icon(Icons.edit),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                _onSelectItemDrawer(2);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Perfil'),
              leading: Icon(Icons.supervised_user_circle),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                _onSelectItemDrawer(3);
              },
            ),
            ListTile(
              title: Text('Configuración'),
              leading: Icon(Icons.build),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                _onSelectItemDrawer(4);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Acerca de'),
              leading: Icon(Icons.info_outline),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onSelectItemDrawer(5);
              },
            ),
            ListTile(
              title: Text('Cerrar Sesion',
                  style: TextStyle(
                    color: Colors.red,
                  )),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
            SizedBox(height: 50.0),
            Divider(),
            Center(
              child: Column(
                children: [
                  Text(
                    'Ecology App',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text('Version: Alpha'),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _getDrawerItem(_selectDrawerItem),
    );
  }
}

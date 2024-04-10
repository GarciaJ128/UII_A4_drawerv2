import 'package:flutter/material.dart';

//import 'main.dart';
import 'package:garciadrawerv2/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Row centrado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Row Izquierda',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Row Derecha',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          const Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Row Igualado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contacts)}),
          const Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Row Alrededor',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.alrededor)}),
          const Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Row Espacio entre',
              onTap: () => {
                    Navigator.pushReplacementNamed(context, MyApp.espacioEntre)
                  }),
          const Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Row Estrecho',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.strech)}),
          ListTile(
            title: const Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return const DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Compilación Movil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

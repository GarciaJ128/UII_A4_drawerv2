import 'package:garciadrawerv2/movies.dart';
import 'package:garciadrawerv2/profile.dart';
import 'package:flutter/material.dart';

import 'contact.dart';
import 'inicio.dart';
import 'row_around.dart';
import 'row_between.dart';
import 'row_stretch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String inicio = Inicio.routeName;
  static const String profile = Profile.routeName;
  static const String movies = Movies.routeName;
  static const String contacts = Contact.routeName;
  static const String alrededor = Around.routeName;
  static const String espacioEntre = Between.routeName;
  static const String strech = Stretch.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        inicio: (context) => Inicio(),
        profile: (context) => Profile(),
        movies: (context) => Movies(),
        contacts: (context) => Contact(),
        alrededor: (context) => Around(),
        espacioEntre: (context) => Between(),
        strech: (context) => Stretch()
      },
      home: Inicio(),
    );
  }
}

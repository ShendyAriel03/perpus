import 'package:flutter/material.dart';
import 'package:tio/login.dart';
import 'package:tio/register.dart';
import 'package:tio/beranda.dart';
import 'package:tio/form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Library',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: '/register',
      routes: {
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/beranda': (context) => Beranda(),
        '/form': (context) => FormBuku(),
      },
    );
  }
}

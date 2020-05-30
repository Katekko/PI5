import 'package:flutter/material.dart';
import 'package:teste_flutter/pages/login.page.dart';
import 'package:teste_flutter/pages/home.page.dart';
import 'package:teste_flutter/pages/cadastro.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OhGás',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: CadastroPage(),
    );
  }
}


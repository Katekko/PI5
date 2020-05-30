import 'package:flutter/material.dart';
import 'package:teste_flutter/presentation/cadastro/cadastro.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OhGás',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: CadastroScreen(),
    );
  }
}

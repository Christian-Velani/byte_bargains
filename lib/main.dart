import 'package:byte_bargains/cadastro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {"/Cadastro": (context) => CadastroPage()},
        initialRoute: '/Cadastro');
  }
}

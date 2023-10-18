import 'package:byte_bargains/cadastro.dart';
import 'package:byte_bargains/editar.dart';
import 'package:byte_bargains/jogo.dart';
import 'package:byte_bargains/login.dart';
import 'package:byte_bargains/perfil.dart';
import 'package:byte_bargains/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/Cadastro": (context) => CadastroPage(),
      "/Login": (context) => LoginPage(),
      "/Perfil": (context) => PerfilPage(),
      "/Principal": (context) => NavigationPage(),
      "/Editar": (context) => EditarPage(),
      "/Jogo": (context) => JogoPage(),
    }, initialRoute: '/Login');
  }
}

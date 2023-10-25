import 'package:byte_bargains/cadastro.dart';
import 'package:byte_bargains/editar.dart';
import 'package:byte_bargains/jogo.dart';
import 'package:byte_bargains/login.dart';
import 'package:byte_bargains/perfil.dart';
import 'package:byte_bargains/navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

const firebaseConfig = FirebaseOptions(
  apiKey: "AIzaSyBYtI828ak7q5Qt45cCMzWRp1v7oL6mMGc",
  projectId: "bytebargains-61f1e",
  storageBucket: "bytebargains-61f1e.appspot.com",
  messagingSenderId: "1060388765263",
  appId: "1:1060388765263:android:3e7c835e56386c3a02343a",
);
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseConfig);
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

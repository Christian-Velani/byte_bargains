// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:byte_bargains/styles.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int indexPaginaAtual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset(
            'images/icon.png',
          ),
          onPressed: () => Navigator.of(context).pushNamed("/Perfil"),
        ),
        title: Text(
          "Olá, Usuário!",
          style: textoOpenSansSemiBold,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            indexPaginaAtual = index;
          });
        },
        indicatorColor: Colors.blue,
        selectedIndex: indexPaginaAtual,
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: label)
        ],
      ),
    );
  }
}

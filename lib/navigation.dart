// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:byte_bargains/meus_widgets.dart';
import 'package:byte_bargains/principal.dart';
import 'package:byte_bargains/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final db = FirebaseFirestore.instance;
  int indexPaginaAtual = 0;
  Map<String, List<Jogo>> generosJogos = {
    "Gênero 1": [
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 3"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 4"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 5"),
    ],
    "Gênero 2": [
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 3")
    ],
    "Gênero 3": [
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 3")
    ],
    "Gênero 4": [
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 3")
    ],
    "Gênero 5": [
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
            fit: BoxFit.cover,
          ),
          "Jogo 3")
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 100,
          leadingWidth: 110,
          backgroundColor: Colors.transparent,
          leading: Container(
            margin: EdgeInsets.only(left: 10),
            height: 100,
            width: 100,
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  FirebaseAuth.instance.currentUser!.photoURL!,
                  fit: BoxFit.fill,
                ),
              ),
              onTap: () => Navigator.of(context).pushNamed("/Perfil"),
            ),
          ),
          title: Text(
            "Olá, ${FirebaseAuth.instance.currentUser!.displayName}",
            style: textoOpenSansSemiBold,
          ),
        ),
        bottomNavigationBar: NavigationBar(
          indicatorColor: Color.fromARGB(194, 123, 131, 149),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          height: 50,
          backgroundColor: Color.fromARGB(194, 123, 131, 149),
          indicatorShape: CircleBorder(),
          onDestinationSelected: (int index) {
            setState(() {
              indexPaginaAtual = index;
            });
          },
          selectedIndex: indexPaginaAtual,
          destinations: [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              selectedIcon: Icon(Icons.home, color: Colors.blue),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_border, color: Colors.grey),
              selectedIcon: Icon(Icons.favorite, color: Colors.blue),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.grey,
              ),
              selectedIcon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              label: "",
            ),
          ],
        ),
        body: <Widget>[
          PrincipalPage(),
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lista de Desejos",
                  style: textoNotoSansBoldGrande,
                ),
              ),
              SizedBox(
                height: 580,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: generosJogos.keys
                      .map(
                        (genero) => GeneroContainer(
                          genero,
                          generosJogos[genero],
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Pesquisar",
                      labelStyle: textoNotoSansBold,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  "Resultados da Pesquisa",
                  style: textoNotoSansBoldGrande,
                ),
                SizedBox(
                  height: 531,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      JogoPequenoHorizontal(
                          imagem: Image.network(
                            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
                            fit: BoxFit.cover,
                          ),
                          nome: "Jogo 1"),
                      JogoPequenoHorizontal(
                          imagem: Image.network(
                            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
                            fit: BoxFit.cover,
                          ),
                          nome: "Jogo 1"),
                      JogoPequenoHorizontal(
                          imagem: Image.network(
                            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
                            fit: BoxFit.cover,
                          ),
                          nome: "Jogo 1"),
                      JogoPequenoHorizontal(
                          imagem: Image.network(
                            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
                            fit: BoxFit.cover,
                          ),
                          nome: "Jogo 1"),
                      JogoPequenoHorizontal(
                          imagem: Image.network(
                            'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
                            fit: BoxFit.cover,
                          ),
                          nome: "Jogo 1"),
                    ],
                  ),
                )
              ],
            ),
          )
        ][indexPaginaAtual]);
  }
}

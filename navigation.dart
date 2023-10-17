// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:byte_bargains/meus_widgets.dart';
import 'package:byte_bargains/styles.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int indexPaginaAtual = 0;
  Map<String, List<Jogo>> generosJogos = {
    "Gênero 1": [
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 3"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 4"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 5"),
    ],
    "Gênero 2": [
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 3")
    ],
    "Gênero 3": [
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 3")
    ],
    "Gênero 4": [
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 3")
    ],
    "Gênero 5": [
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 1"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
            fit: BoxFit.cover,
          ),
          "Jogo 2"),
      Jogo(
          Image.network(
            'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
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
        Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Text(
              "Vamos explorar",
              style: textoOpenSansRegularPequeno,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "Jogos",
              style: textoNotoSansBoldGrande,
            ),
          ),
          SizedBox(
            height: 500,
            child: ListView(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              children: [
                JogoGrande(
                    Image.network(
                      'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
                      fit: BoxFit.cover,
                    ),
                    'Jogo 1',
                    "minitexto jogo 1"),
                JogoGrande(
                    Image.network(
                      'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
                      fit: BoxFit.cover,
                    ),
                    'Jogo 2',
                    "minitexto jogo 2"),
                JogoGrande(
                    Image.network(
                      'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
                      fit: BoxFit.cover,
                    ),
                    'Jogo 3',
                    "minitexto jogo 3"),
              ],
            ),
          )
        ]),
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
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          JogoPequenoHorizontal(
                              imagem: Image.network(
                                'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
                                fit: BoxFit.cover,
                              ),
                              nome: "Jogo 1"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          JogoPequenoHorizontal(
                              imagem: Image.network(
                                'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
                                fit: BoxFit.cover,
                              ),
                              nome: "Jogo 1"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          JogoPequenoHorizontal(
                              imagem: Image.network(
                                'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
                                fit: BoxFit.cover,
                              ),
                              nome: "Jogo 1"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          JogoPequenoHorizontal(
                              imagem: Image.network(
                                'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
                                fit: BoxFit.cover,
                              ),
                              nome: "Jogo 1"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ][indexPaginaAtual],
    );
  }
}

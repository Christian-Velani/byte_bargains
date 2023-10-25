// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:byte_bargains/meus_widgets.dart';
import 'package:byte_bargains/styles.dart';
import 'package:flutter/material.dart';

class JogoPage extends StatefulWidget {
  const JogoPage({super.key});

  @override
  State<JogoPage> createState() => _JogoPageState();
}

class _JogoPageState extends State<JogoPage> {
  IconData icone = Icons.favorite_outline;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: Image.network(
                    'https://www.showmetech.com.br/wp-content/uploads//2019/11/Minecraft1-1920x1024.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () => Navigator.pop(context),
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    size: 50,
                    Icons.arrow_circle_left_outlined,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: BlurryContainer(
                    width: double.infinity,
                    borderRadius: BorderRadius.circular(0),
                    child: Column(
                      children: [
                        Text(
                          "Minecraft",
                          style: textoNotoSansBoldGrande,
                        ),
                        Text(
                          "Minecraft é um jogo eletrônico dos gêneros sandbox e sobrevivência que não possui objetivos específicos a serem alcançados, permitindo aos jogadores uma grande liberdade de escolha de como jogá-lo.",
                          style: textoOpenSansRegularPequeno,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              height: 57,
              width: 321,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  icone = icone == Icons.favorite_outline
                      ? Icons.favorite
                      : Icons.favorite_outline;
                  setState(() {});
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(icone),
                    ),
                    Text(
                      "Lista de Desejos",
                      style: textoNotoSansBold,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 330,
              width: 321,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  LojaPreco("Loja 1", "100", Estado.normal),
                  LojaPreco("Loja 1", "100", Estado.indisponivel),
                  LojaPreco("Loja 1", "100", Estado.desconto),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

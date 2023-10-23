// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:byte_bargains/styles.dart';
import 'package:flutter/material.dart';

class JogoPage extends StatefulWidget {
  const JogoPage({super.key});

  @override
  State<JogoPage> createState() => _JogoPageState();
}

class _JogoPageState extends State<JogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        child: ListView(children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.passthrough,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 300,
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
                      bottom: 0,
                      child: BlurryContainer(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text(
                                "Minecraft",
                                style: textoNotoSansBoldGrande,
                              ),
                              Text(
                                "Minecraft é um jogo eletrônico dos gêneros sandbox e sobrevivência que não possui objetivos específicos a serem alcançados, permitindo aos jogadores uma grande liberdade de escolha de como jogá-lo.",
                                style: textoOpenSansRegular,
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

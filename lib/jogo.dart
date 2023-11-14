// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:byte_bargains/meus_widgets.dart';
import 'package:byte_bargains/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class JogoPage extends StatefulWidget {
  @override
  State<JogoPage> createState() => _JogoPageState();
}

class _JogoPageState extends State<JogoPage> {
  final db = FirebaseFirestore.instance;
  IconData icone = Icons.favorite_outline;

  @override
  Widget build(BuildContext context) {
    late String nomeJogo;
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    if (args.containsKey('nomeJogo')) {
      nomeJogo = args['nomeJogo'] as String;
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            stream: db.collection("Jogos").doc(nomeJogo).snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();
              var data = snapshot.data!.data();
              return Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 350,
                        child: Image.network(
                          data!["Imagem"],
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
                                data!["Nome do Jogo"],
                                style: textoNotoSansBoldGrande,
                              ),
                              Text(
                                data!["Descrição"],
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
              );
            }),
      ),
    );
  }
}

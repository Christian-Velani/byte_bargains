// ignore_for_file: prefer_const_constructors

import 'package:byte_bargains/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'meus_widgets.dart';

class PrincipalPage extends StatelessWidget {
  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: db.collection("Jogos").snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return CircularProgressIndicator();
        var data = snapshot.data!.docs;
        return Column(
          children: [
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
                children: data
                    .map((doc) => JogoGrande(
                        Image.network(
                          doc["Imagem"],
                          fit: BoxFit.fill,
                        ),
                        doc["Nome do Jogo"],
                        "minitexto jogo 1"))
                    .toList(),
              ),
            )
          ],
        );
      },
    );
  }
}

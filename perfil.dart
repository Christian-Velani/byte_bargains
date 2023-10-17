// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:byte_bargains/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 70, 0, 30),
            child: Center(
              child: Text(
                "Perfil do Usuário",
                style: textoNotoSansBoldGrande,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 100),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 50),
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 80,
                    child: Image.asset('images/icon.png'),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Usuário",
                      style: textoOpenSansBold,
                    ),
                    Text(
                      "email@email.com",
                      style: textoOpenSansRegularPequeno,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 20),
            child: Row(
              children: [
                Icon(
                  Icons.edit_outlined,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: RichText(
                      text: TextSpan(
                          text: "Alterar Perfil",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                Navigator.of(context).pushNamed("/Editar"))),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed("/Login"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Row(children: [
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(Icons.logout_outlined)),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        "Desconectar",
                        style: textoOpenSansRegularBranco,
                      ),
                    )
                  ]),
                ),
              ))
        ],
      ),
    );
  }
}

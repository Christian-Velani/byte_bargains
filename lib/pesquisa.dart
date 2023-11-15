import 'package:byte_bargains/meus_widgets.dart';
import 'package:byte_bargains/styles.dart';
import 'package:flutter/material.dart';

class PesquisaPage extends StatefulWidget {
  const PesquisaPage({super.key});

  @override
  State<PesquisaPage> createState() => _PesquisaPageState();
}

class _PesquisaPageState extends State<PesquisaPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          // Text(
          //   "Resultados da Pesquisa",
          //   style: textoNotoSansBoldGrande,
          // ),
          // SizedBox(
          //   height: 531,
          //   child: ListView(
          //     scrollDirection: Axis.vertical,
          //     children: [
          //       JogoPequenoHorizontal(
          //           imagem: Image.network(
          //             'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
          //             fit: BoxFit.cover,
          //           ),
          //           nome: "Jogo 1"),
          //       JogoPequenoHorizontal(
          //           imagem: Image.network(
          //             'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
          //             fit: BoxFit.cover,
          //           ),
          //           nome: "Jogo 1"),
          //       JogoPequenoHorizontal(
          //           imagem: Image.network(
          //             'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
          //             fit: BoxFit.cover,
          //           ),
          //           nome: "Jogo 1"),
          //       JogoPequenoHorizontal(
          //           imagem: Image.network(
          //             'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
          //             fit: BoxFit.cover,
          //           ),
          //           nome: "Jogo 1"),
          //       JogoPequenoHorizontal(
          //           imagem: Image.network(
          //             'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
          //             fit: BoxFit.cover,
          //           ),
          //           nome: "Jogo 1"),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

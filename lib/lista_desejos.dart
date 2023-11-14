// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:byte_bargains/meus_widgets.dart';
import 'package:byte_bargains/styles.dart';
import 'package:flutter/material.dart';

class ListaDesjosPage extends StatelessWidget {
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

  ListaDesjosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

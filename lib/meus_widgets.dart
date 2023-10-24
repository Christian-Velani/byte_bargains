import 'package:byte_bargains/styles.dart';
import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class JogoGrande extends StatelessWidget {
  Image imagem;
  String nome;
  String minitexto;

  JogoGrande(this.imagem, this.nome, this.minitexto);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.all(20),
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            width: 350,
            child: GestureDetector(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), child: imagem),
              onTap: () => Navigator.of(context).pushNamed('/Jogo'),
            ),
          ),
        ),
        Positioned(
          left: 40,
          bottom: 50,
          child: BlurryContainer(
            blur: 5,
            width: 310,
            elevation: 0,
            color: Colors.transparent,
            padding: const EdgeInsets.all(8),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Column(
              children: [
                Text(
                  nome,
                  style: textoOpenSansSemiBold,
                ),
                Text(
                  minitexto,
                  style: textoOpenSansRegularMini,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class JogoPequeno extends StatelessWidget {
  Image imagem;
  String nome;

  JogoPequeno(this.imagem, this.nome);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          width: 100,
          child:
              ClipRRect(borderRadius: BorderRadius.circular(5), child: imagem),
        ),
        Text(nome, style: textoOpenSansRegularPequeno)
      ],
    );
  }
}

class JogoPequenoHorizontal extends StatefulWidget {
  final Image imagem;
  final String nome;

  const JogoPequenoHorizontal(
      {super.key, required this.imagem, required this.nome});

  @override
  State<JogoPequenoHorizontal> createState() => _JogoPequenoHorizontalState();
}

class _JogoPequenoHorizontalState extends State<JogoPequenoHorizontal> {
  IconData icone = Icons.favorite_border;
  Color cor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            width: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5), child: widget.imagem),
          ),
          Text(widget.nome, style: textoOpenSansSemiBold),
          Spacer(),
          IconButton(
            alignment: Alignment.centerRight,
            onPressed: () {
              icone = icone == Icons.favorite_border
                  ? Icons.favorite
                  : Icons.favorite_border;
              cor = cor == Colors.grey ? Colors.blue : Colors.grey;
              setState(() {});
            },
            icon: Icon(
              icone,
              color: cor,
            ),
          ),
        ],
      ),
    );
  }
}

class GeneroContainer extends StatelessWidget {
  String genero;
  List<Jogo>? jogos;

  GeneroContainer(this.genero, this.jogos);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(5, 10, 0, 5),
          alignment: Alignment.centerLeft,
          child: Text(
            genero,
            style: textoOpenSansSemiBold,
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: jogos!
                .map((jogo) => JogoPequeno(jogo.imagem, jogo.nome))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class LojaPreco extends StatelessWidget {
  String nomeLoja;
  String preco;
  Estado estado;

  LojaPreco(this.nomeLoja, this.preco, this.estado);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 321,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey),
      child: Row(
        children: [
          Text(
            nomeLoja,
            style: textoOpenSansRegularPequenoBranco,
          ),
          Spacer(),
          Container(
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.monetization_on_outlined,
              color: Colors.blue,
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: estado == Estado.normal
                ? Text("R\$$preco", style: textoOpenSansRegularPequeno)
                : estado == Estado.desconto
                    ? Row(
                        children: [
                          Text(
                            "R\$$preco",
                            style: textoPrecoDesconto,
                          ),
                          Text("R\$$preco", style: textoPrecoOriginal)
                        ],
                      )
                    : const Text(
                        "Indisponivel",
                        style: textoOpenSansRegularPequeno,
                      ),
          )
        ],
      ),
    );
  }
}

class Jogo {
  Image imagem;
  String nome;

  Jogo(this.imagem, this.nome);
}

enum Estado { normal, desconto, indisponivel }

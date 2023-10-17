// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'styles.dart';

class EditarPage extends StatefulWidget {
  const EditarPage({super.key});

  @override
  State<EditarPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<EditarPage> {
  XFile? image;

  void subirImagem() async {
    image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x001F2228),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              alignment: Alignment.center,
              height: 140,
              width: 140,
              child: GestureDetector(
                onTap: subirImagem,
                child: image != null
                    ? Image.file(
                        File(image!.path),
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    : const Text(
                        "Nenhuma imagem selecionada",
                        style: TextStyle(color: Colors.white),
                      ),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Usuário",
                  labelStyle: textoNotoSansBold,
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  labelStyle: textoNotoSansBold,
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Senha",
                  labelStyle: textoNotoSansBold,
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirmar Senha",
                  labelStyle: textoNotoSansBold,
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "Editar",
                    style: textoOpenSansBold,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

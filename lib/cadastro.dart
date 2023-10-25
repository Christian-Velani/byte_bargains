// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:validation_textformfield/validation_textformfield.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

import 'styles.dart';

class CadastroPage extends StatefulWidget {
  CadastroPage({super.key});
  final user = FirebaseAuth.instance.currentUser;

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  XFile? image;
  late TextEditingController usuarioController;

  void subirImagem() async {
    image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> cadastrarUsuario(
      String nomeUsuario, String email, String senha) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: senha);
      // Redirecionar o usuário para a próxima tela do aplicativo
    } catch (e) {
      // Tratar o erro
    }
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
              child: TextFormField(
                controller: usuarioController,
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
                    "Cadastrar",
                    style: textoOpenSansBold,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

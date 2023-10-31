// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'styles.dart';

class CadastroPage extends StatefulWidget {
  CadastroPage({super.key});
  final user = FirebaseAuth.instance.currentUser;

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  XFile? image;
  final usuarioController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void subirImagem() async {
    image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {});
  }


  void cadastrar() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: senhaController.text,
      );
      userCredential.user!.updateDisplayName(usuarioController.text);
      userCredential.user!.updateEmail(emailController.text);

      Navigator.pop(context);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x001F2228),
      body: SafeArea(
        top: true,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  alignment: Alignment.center,
                  height: 140,
                  width: 140,
                  child: GestureDetector(
                    onTap: subirImagem,
                    child: image != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image.file(
                              File(image!.path),
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          )
                        : const Text(
                            "Nenhuma imagem selecionada",
                            style: TextStyle(color: Colors.black),
                          ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  width: 300,
                  child: TextFormField(
                    validator: (value) {
                      return ((value != null &&
                                  value.toString().length >= 6 &&
                                  value.toString().length <= 30) &&
                              (value.isEmpty))
                          ? null
                          : 'O nome de usuário tem que ser entre 6 e 30 caracteres';
                    },
                    controller: usuarioController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Usuário",
                      labelStyle: textoNotoSansBold,
                    ),
                    style: TextStyle(color: Colors.white),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  width: 300,
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      return value != null &&
                              value.isNotEmpty &&
                              value.contains('@')
                          ? null
                          : "Insira um email válido";
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  width: 300,
                  child: TextFormField(
                    controller: senhaController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "A senha deve ter de 7 a 30 caracteres";
                      } else if (value != null && value.isNotEmpty) {
                        if (value.length < 7 || value.length > 30) {
                          return "A senha deve ter de 7 a 30 caracteres";
                        } else if (!value.contains(RegExp(r'[0-9]'))) {
                          return "A senha precisa ter 1 número";
                        } else if (!value.contains(RegExp(r'[A-z]'))) {
                          return "A senha tem que ter uma letra maíscula";
                        } else if (!value.contains(RegExp(r'[!@#$%&*]'))) {
                          return "A senha tem que ter um caracter especial [!@#\$%*&]";
                        }
                        return null;
                      }
                    },
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
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  width: 300,
                  child: TextFormField(
                    validator: (value) {
                      return (value != senhaController.text ||
                              (value != null && value.isEmpty))
                          ? "As senhas não coincidem"
                          : null;
                    },
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
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        cadastrar
                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      "Cadastrar",
                      style: textoOpenSansBold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

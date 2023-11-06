// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:byte_bargains/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final txtNameCtrl = TextEditingController();
  final txtSenhaCtrl = TextEditingController();

  void Logar() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: txtNameCtrl.text, password: txtSenhaCtrl.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    print(FirebaseAuth.instance.currentUser!.photoURL!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
                child: Image.asset("images/icon.png"),
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: txtNameCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "E-mail",
                    labelStyle: textoNotoSansBold,
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: txtSenhaCtrl,
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
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: "Esqueceu a senha?",
                    style: textoOpenSansRegular,
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                width: double.infinity,
                child: ElevatedButton(
                    child: Text(
                      "Entrar",
                      style: textoOpenSansBold,
                    ),
                    onPressed: () {
                      Logar();
                      Navigator.of(context).pushNamed("/Principal");
                    }),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed('/Cadastro'),
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
    );
  }
}

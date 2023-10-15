// ignore_for_file: prefer_const_constructors
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:byte_bargains/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Entrar",
                  style: textoOpenSansBold,
                ),
              ),
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
    );
  }
}

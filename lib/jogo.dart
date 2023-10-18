// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class JogoPage extends StatefulWidget {
  const JogoPage({super.key});

  @override
  State<JogoPage> createState() => _JogoPageState();
}

class _JogoPageState extends State<JogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        child: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          backgroundColor: Colors.transparent,
          child: Icon(
            size: 50,
            Icons.arrow_circle_left_outlined,
          ),
        ),
      ),
    );
  }
}

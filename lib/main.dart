import 'dart:html';

import 'package:calculadora_manutencao/screens/Home.dart';
import 'package:calculadora_manutencao/utils/calcExpression.dart';
import 'package:flutter/material.dart';

import 'package:calculadora_manutencao/components/Keyboard.dart';

import 'Components/Menu.dart';
import 'Components/Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}



import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false);
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  void _calcularIMC() {}

  void _cadastrarUsuario() {}

  void _cadastrarProduto() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
        const Icon(
        Icons.store,
          size: 120.0,
          color: Colors.red,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: SizedBox(
            height: 50.0,
            child: ElevatedButton(
              onPressed: _calcularIMC,
              child: const Text("IMC"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: SizedBox(
            height: 50.0,
            child: ElevatedButton(
              onPressed: () => {},
              child: const Text("Calcular"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: SizedBox(
            height: 50.0,
            child: ElevatedButton(
              onPressed: _cadastrarUsuario,
              child: const Text("Cadastro de Usuário"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: SizedBox(
            height: 50.0,
            child: ElevatedButton(
              onPressed: _cadastrarProduto,
              child: const Text("Cadastro de Produtos"),
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Contrato extends StatefulWidget {
  const Contrato({super.key});

  @override
  State<Contrato> createState() => _ContratoState();
}

class _ContratoState extends State<Contrato> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Contratos"),
    );
  }
}
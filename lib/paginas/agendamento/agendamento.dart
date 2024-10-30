import 'package:flutter/material.dart';

class Agendamento extends StatefulWidget {
  const Agendamento({super.key});

  @override
  State<Agendamento> createState() => _AgendamentoState();
}

class _AgendamentoState extends State<Agendamento> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Agendamentos"),
    );
  }
}

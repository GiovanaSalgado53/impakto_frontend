import 'package:flutter/material.dart';
import 'package:impakto/inicio/telaInicio.dart';
// Certifique-se de importar o arquivo correto

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.all(16),
        child: ListView(
          children: [
             TelaInicio(), 
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:impakto/paginas/agendamento/agendamento.dart';
import 'package:impakto/appBody.dart';
import 'package:impakto/components/navegacao/navegacao.dart';
import 'package:impakto/inicio/cadastro.dart';
import 'package:impakto/inicio/login.dart';
import 'package:impakto/inicio/recuperarSenha.dart';
import 'package:impakto/paginas/mapa/mapa.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AppBody(),
        '/cadastro': (context) => const Cadastro(),
        '/login': (context) => const Login(),
        '/recuperarSenha': (context) => Recuperarsenha(), //o flutter disse pra não usar const aqui, mas qualquer coisa muda no futuro
        '/mapa': (context) => Mapa(), 
        './agendamento': (context) => const Agendamento(),
        './components/navegacao': (context) => const Navegacao()
      },
    );
  }
}
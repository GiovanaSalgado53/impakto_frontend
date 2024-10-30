import 'package:flutter/material.dart';
import 'package:impakto/paginas/agendamento/agendamento.dart';
import 'package:impakto/paginas/contrato/contrato.dart';
import 'package:impakto/paginas/mapa/mapa.dart';
import 'package:impakto/paginas/notificacao/notificacao.dart';
import 'package:impakto/paginas/relatorio/relatorio.dart';

class Navegacao extends StatefulWidget {
  const Navegacao({super.key});

  @override
  State<Navegacao> createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao> {
  int _opcaoSelecionada = 2;
  final PageController _pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _opcaoSelecionada,
          onTap: (opcao) {
            setState(() {
              _opcaoSelecionada = opcao;
              _pageController.jumpToPage(opcao);
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: const Color(0xffEE3832),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active), label: "Notificações"),
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: "Contratos",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), label: "Mapa"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: "Agendamentos"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: "Relatório"),
          ],
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _opcaoSelecionada = index;
            });
          },
          children: const <Widget>[
            Notificacao(),
            Contrato(),
            Mapa(),
            Agendamento(),
            Relatorio()
          ],
        ),
      ),
    );
  }
}

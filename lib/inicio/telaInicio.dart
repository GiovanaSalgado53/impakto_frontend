import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height, // faz ocupar todo o espaço da tela
      child: Column(
        //é necessário já que estamos usando MediaQuery, se não usar o alinhamento não funciona
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Image.asset('images/LogoImpakto.png', 
          width: 250,  
          height: 100),
          Container(
            child: Column(
              children: [
                ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(260, 60),
                side: const BorderSide(
                  width: 3.0,
                  color: Color(0xffEE3832),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/cadastro');
              },
              child: const Text(
                'Cadastre-se',
                style: TextStyle(
                  color: Color(0xffEE3832),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
          ),
          const SizedBox(height: 20), 
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffEE3832),
              minimumSize: const Size(260, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

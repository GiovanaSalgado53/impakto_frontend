import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
              Navigator.pushNamed(context, '/');
            },
        )
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height, // faz ocupar todo o espaço da tela
      child: Column(
        //é necessário já que estamos usando MediaQuery, se não usar o alinhamento não funciona
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Padding(padding: EdgeInsets.fromLTRB(50, 20, 15, 10)),
          Image.asset('images/LogoImpakto.png', 
          width: 250,  
          height: 100),
          Container(   
            padding: EdgeInsets.fromLTRB(15, 100, 15, 5),
            child:              
            TextField(
                    decoration: InputDecoration(
                      labelText: 'Login',
                      labelStyle: TextStyle(
                        color: Color(0xffEE3832),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Color(0xffEE3832),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                        color: Color(0xffEE3832),
                      ),
                    ),
                  ),)),

                  SizedBox(
                  height: 10
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
                    child:
                      TextField(
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: TextStyle(
                        color: Color(0xffEE3832),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Color(0xffEE3832),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                        color: Color(0xffEE3832),
                      ),
                    ),
                  ),
                    ),
                    ),
            
                 SizedBox(
                  height: 10
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(300, 3, 10, 0),
                    child: 
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/recuperarSenha');
                      },
                      child: Text(
                        "Esqueci a senha",
                      ))),

          const SizedBox(height: 20), 

          Container(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 0),
            child: 
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffEE3832),
                  minimumSize: const Size(260, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, './components/navegacao');
                },
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
          )

                  

          ]
        ))
      ]))
    );
  }
}
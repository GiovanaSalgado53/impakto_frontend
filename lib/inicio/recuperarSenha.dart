import 'package:flutter/material.dart';

class Recuperarsenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
        )
      ),
        body: Container(
          margin: const EdgeInsets.all(9),
          child: ListView(
          children: [

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: [
                  Image.asset('images/LogoImpakto.png', 
                  width: 250,  
                  height: 100),



                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
                    child:
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nova senha', 
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



                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: const Color(0xffEE3832),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/mapa');
                    },
                   child: 
                   Text('Recuperar senha',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                   ),
                  ),
          ],
          )
        )
      ],
      ),
    ),
    ),
    );
  }
}
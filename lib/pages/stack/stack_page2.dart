import 'package:flutter/material.dart';

class StackPage2 extends StatefulWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  State<StackPage2> createState() => _StackPage2State();
}

class _StackPage2State extends State<StackPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Page'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://www.viagensecaminhos.com/wp-content/uploads/2016/11/vista-aerea-centro-historico-sao-luis.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            color: Colors.white10,
          ),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
              shape: RoundedRectangleBorder(//bordas
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 12,//sombra
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('São Luís',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        'São Luís é uma cidade no nordeste do Brasil, na ilha de São Luís, no Oceano Atlântico. No centro histórico da cidade encontra-se o bairro de Praia Grande, na área circundante da rua de Portugal, marcado por edifícios coloniais com azulejos distintos e varandas em ferro fundido. O Palácio dos Leões, onde reside o governador do estado, exibe arte e mobiliário franceses. Nas proximidades, encontra.se o grande Palácio La Ravardière, do século XVII.'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

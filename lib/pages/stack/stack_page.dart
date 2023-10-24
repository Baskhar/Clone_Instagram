import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Page'),
      ),
      body: Stack(//organiza do withs de forma livre, pondo o primeiro no fundo e os depois um encima do outro
        children: [
          Container(
            color: Colors.green,
          ),
          Positioned(//obs pixel de distância que ele deve ficar do paraêmtro passado
            top: 40,
            right: 100,
            bottom: 10,
            child: Container(
              color: Colors.red,
              width: 300,
              height: 300,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.black,
              width: 150,
              height: 150,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
class RowColumPage extends StatefulWidget {
  const RowColumPage({Key? key}) : super(key: key);

  @override
  State<RowColumPage> createState() => _RowColumState();
}

class _RowColumState extends State<RowColumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row e Colum'),
      ),
      body: Container(
        width: 400,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,//alinhamento de cima pra baixo
          crossAxisAlignment: CrossAxisAlignment.start,//alinhamneto da esquerda pra direita
          children: [
            Text('Elemeneto 1'),
            Text('Elemeneto 2'),
            Text('Elemeneto 3'),
          ],
        ),
      ),
    );
  }
}

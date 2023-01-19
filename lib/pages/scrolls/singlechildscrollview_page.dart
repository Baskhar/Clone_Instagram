import 'package:flutter/material.dart';

class SingleChildScrollView1 extends StatefulWidget {
  const SingleChildScrollView1({Key? key}) : super(key: key);

  @override
  State<SingleChildScrollView1> createState() => _SingleChildScrollViewState();
}

class _SingleChildScrollViewState extends State<SingleChildScrollView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(//scrow
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,//largura da tela
              height: 200,
              color: Colors.red
            ),
            Container(
              width: MediaQuery.of(context).size.width,//largura da tela
              height: 200,
              color: Colors.blue
            ),
            Container(
              width: MediaQuery.of(context).size.width,//largura da tela
              height: 200,
              color: Colors.green
            ),
            Container(
              width: MediaQuery.of(context).size.width,//largura da tela
              height: 200,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.of(context).size.width,//largura da tela
              height: 200,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

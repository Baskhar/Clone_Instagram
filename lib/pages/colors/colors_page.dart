import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final cor = Color.fromRGBO(0, 0, 255, 1);
    final cor  = Color(0XFF47D1FD);
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors Page'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: cor,
        ),
      ),
    );
  }
}

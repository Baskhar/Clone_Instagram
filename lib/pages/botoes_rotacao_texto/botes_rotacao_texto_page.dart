import 'package:flutter/material.dart';

class BotoessRotacaoPage extends StatefulWidget {
  const BotoessRotacaoPage({Key? key}) : super(key: key);

  @override
  State<BotoessRotacaoPage> createState() => _BotoessRotacaoPageState();
}

class _BotoessRotacaoPageState extends State<BotoessRotacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botões Rotação Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              //rotaciona WIdget
              quarterTurns: -1,
              child: Text('Walysson'),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
              style: TextButton.styleFrom(
                  primary: Colors.red,
                  minimumSize: Size(110, 110),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.accessible_forward_rounded)),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sair'),
              style: ButtonStyle(
                  //customização personalizada
                  shadowColor: MaterialStatePropertyAll(Colors.blue),
                  minimumSize: MaterialStatePropertyAll(Size(20, 30)),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.focused)) {
                      return Colors.amber;
                    }
                    return Colors.red;
                  })),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.account_balance_wallet),
                label: Text('SACAR')),
            SizedBox(
              height: 30,
            ),
            InkWell(
              //não ocupa espaços além dele
              onTap: () {},
              child: Text('InkWell'),
            ),
            GestureDetector(
              child: Text('Gesture Detector'),
              onTap: () {},
            ),
            Container(
              //montando um botão
              width: 300,
              height: 100,
              color: Colors.amberAccent,

              child: InkWell(
                  onTap: () {}, child: Center(child: Text('Botao Walysson',style: TextStyle(
                color: Colors.black
              ),))),
            )
          ],
        ),
      ),
    );
  }
}

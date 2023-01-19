import 'package:flutter/material.dart';



class CircleAvatarPage extends StatefulWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  State<CircleAvatarPage> createState() => _CircleAvatarPageState();
}

class _CircleAvatarPageState extends State<CircleAvatarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Avatar'),
      ),
      body: Row(
        children: [
          ImageAvatar(Imageinsta: 'https://i.superesportes.com.br/1okug8VBU-aKF2zgNxbkceW34wc=/1200x1200/smart/imgsapp.mg.superesportes.com.br/app/noticia_126420360808/2022/11/30/3981860/cristiano-ronaldo-comemora-gol-por-portugal-na-copa-do-mundo_1_94705.jpg'),
          ImageAvatar(Imageinsta: 'http://conteudo.imguol.com.br/c/esporte/5c/2022/12/10/cristiano-ronaldo-durante-jogo-contra-marrocos-nas-quartas-da-copa-do-qatar-1670691420045_v2_1280x1920.jpg'),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String Imageinsta;
  const ImageAvatar({Key? key,required this.Imageinsta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
         // color: Colors.red,
          decoration: BoxDecoration(

            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.black
            ]),
            borderRadius: BorderRadius.circular(100)
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(Imageinsta),

          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text('AO VIVO',style: TextStyle(fontSize: 8),),
              //height: 20,

              padding: EdgeInsets.all(6),
            ),
          ),
        )
      ],
    );
  }
}

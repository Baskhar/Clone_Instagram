import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index){
          return Divider(
            color: Colors.red,
            //thickness: 2, tamanho das listas
          );
          //return Container(
          //  color: Colors.black,
           // height: 10,
          //  width: MediaQuery.of(context).size.width,//pega a largura maxima da tela
         // );
        },
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Indice $index'),
              subtitle: Text('Flutter é Muito Bom :)'),
              leading: CircleAvatar(),
            );
          }),
    );
  }
}

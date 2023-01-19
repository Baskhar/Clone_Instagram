import 'package:flutter/material.dart';
import 'package:terceiro_projeto/Clone_Instagram/Home.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  singlechildscrollview,
  listview,
  dialogs_page,
  snackbar,
  forms,
  cidades,
  stack,
  stack2,
  button_navigator_bar,
  circle_avatar,
  colors,
  material_banner,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            tooltip: 'Selecione um item do menu',
            //color: Colors.red,
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');

                  break;
                case PopupMenuPages.rows_columns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layout_builder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.botoes_rotacao_texto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                  break;
                case PopupMenuPages.singlechildscrollview:
                  Navigator.of(context).pushNamed('/singlechildscrollview');

                  break;
                case PopupMenuPages.listview:
                  Navigator.of(context).pushNamed('/listview');
                  break;
                case PopupMenuPages.dialogs_page:
                  Navigator.of(context).pushNamed('/dialogs_page');
                  break;
                case PopupMenuPages.snackbar:
                  Navigator.of(context).pushNamed('/snackbar_page');
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms_page');
                  break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed('/stack2');
                  break;
                case PopupMenuPages.button_navigator_bar:
                  Navigator.of(context).pushNamed('/button_navigator_bar');
                  break;
                case PopupMenuPages.circle_avatar:
                  Navigator.of(context).pushNamed('/circle_avatar');
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed('/colors');
                  break;
                case PopupMenuPages.material_banner:
                  Navigator.of(context).pushNamed('/material_banner');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Conteiner"),
                  value: PopupMenuPages.container,
                ),
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Rows & Columns"),
                  value: PopupMenuPages.rows_columns,
                ),
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Media Query"),
                  value: PopupMenuPages.media_query
                ),
                PopupMenuItem<PopupMenuPages>(
                    child: Text("Layout Builder"),
                    value: PopupMenuPages.layout_builder
                ),
                PopupMenuItem<PopupMenuPages>(
                    child: Text("Botões Rotação Texto"),
                    value: PopupMenuPages.botoes_rotacao_texto
                ),
                PopupMenuItem<PopupMenuPages>(
                    child: Text("Single Child Scroll View"),
                    value: PopupMenuPages.singlechildscrollview
                ),
                PopupMenuItem<PopupMenuPages>(
                    child: Text("List View"),
                    value: PopupMenuPages.listview
                ),
                PopupMenuItem<PopupMenuPages>(
                    child: Text("Dialogs Page"),
                    value: PopupMenuPages.dialogs_page
                ),
                PopupMenuItem<PopupMenuPages>(
                    child: Text("SnackBar"),
                    value: PopupMenuPages.snackbar,
                ),
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Forms"),
                  value: PopupMenuPages.forms,
                ),
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Cidades"),
                  value: PopupMenuPages.cidades,
                ),
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Stack"),
                  value: PopupMenuPages.stack,
                ),
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Stack2"),
                  value: PopupMenuPages.stack2,
                ),
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Button Navigator Bar"),
                  value: PopupMenuPages.button_navigator_bar,
                ),
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Circle Avatar"),
                  value: PopupMenuPages.circle_avatar,
                ),
                PopupMenuItem<PopupMenuPages>(
                    child: Text("Colors Page"),
                    value: PopupMenuPages.colors,
                ),
                PopupMenuItem<PopupMenuPages>(
                  child: Text("Material Banner"),
                  value: PopupMenuPages.material_banner,
                ),
              ];
            },
          ), //itens de menu
        ],
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: ElevatedButton(onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  settings: RouteSettings(name: '/instragram_main'),
                  builder: (context) => HomeInsta(),
                ),
              (route)=>false);
          }, child: Text("Instagram")),
        ),
      ),
    );
  }
}

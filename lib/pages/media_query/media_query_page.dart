import 'package:flutter/material.dart';

class MediaQueryPage extends StatefulWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  State<MediaQueryPage> createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    print('Largura: ${mediaQuery.size.width}');
    print('Altura: ${mediaQuery.size.height}');
    print('PADDING TOP: ${mediaQuery.padding.top}');//tamanho da status bar
    print('Tamanho APPBAR(Default): ${kToolbarHeight}');//tamanho da app bar padrão

    final sizestatusbar = mediaQuery.padding.top;//tamanho da status bar
    final heightBody = mediaQuery.size.height - sizestatusbar - kToolbarHeight;//tamanho real da minha tela

    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query Page"),
      ),
      body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                width: mediaQuery.size.width,
                height: heightBody*.5,
              ),
              Container(
                color: Colors.blue,
                width: mediaQuery.size.width,
                height: heightBody*.5,
              ),
            ],
          )),
    );
  }
}

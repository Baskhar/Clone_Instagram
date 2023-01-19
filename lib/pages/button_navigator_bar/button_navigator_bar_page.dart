import 'package:flutter/material.dart';
import 'package:terceiro_projeto/pages/button_navigator_bar/page%201.dart';
import 'package:terceiro_projeto/pages/button_navigator_bar/page%202.dart';

class ButtonNavigatorBar extends StatefulWidget {
  const ButtonNavigatorBar({Key? key}) : super(key: key);

  @override
  State<ButtonNavigatorBar> createState() => _ButtonNavigatorBarState();
}

class _ButtonNavigatorBarState extends State<ButtonNavigatorBar> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Navigator Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            indice = index;
          });

        },
          currentIndex: indice,
          items: [
        BottomNavigationBarItem(
            label: 'Pagina 1', icon: Icon(Icons.add_chart_rounded)),
        BottomNavigationBarItem(label: 'Pagina 2', icon: Icon(Icons.add)),
      ]),
      body: IndexedStack(
        //apresenta 1 whidth por vez(index)
        index: indice,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}

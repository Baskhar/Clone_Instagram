import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatefulWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  State<LayoutBuilderPage> createState() => _LayoutBuilderPageState();
}

class _LayoutBuilderPageState extends State<LayoutBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder Page'),
      ),
      body: LayoutBuilder(builder: (context, constraints){
        return Column(
          children: [
            Container(
              color: Colors.red,
              width: constraints.maxWidth,
              height: constraints.maxHeight *.5,
            ),
            Container(
              color: Colors.blue,
              width: constraints.maxWidth,
              height: constraints.maxHeight *.5,
            ),
          ],
        );
      }),
    );
  }
}

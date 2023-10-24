import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text("Usuário Salvo com sucesso"),
                    backgroundColor: Colors.black,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Simple SnackBar')),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text("Usuário Salvo com sucesso"),
                    backgroundColor: Colors.black,
                    action: SnackBarAction(
                        label: "Desfazer",
                        onPressed: () {
                          print('Clicado');
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Action Snacbar')),
          ],
        ),
      ),
    );
  }
}

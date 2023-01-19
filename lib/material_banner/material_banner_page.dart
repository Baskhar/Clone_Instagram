import 'package:flutter/material.dart';

class MaterialBannerPage extends StatefulWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  State<MaterialBannerPage> createState() => _MaterialBannerPageState();
}

class _MaterialBannerPageState extends State<MaterialBannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Banner Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final materialbanner = MaterialBanner(
                    content: Text("Usuário Salvo com sucesso",style: TextStyle(
                      color: Colors.white,
                    ),),
                    backgroundColor: Colors.black,
                    actions: [
                      TextButton(onPressed: (){
                        ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                      }, child: Text('Cancelar')),
                    ],
                  );
                  //OBS Posso dispensar depois de alguns segundos dessa forma
                  Future.delayed(Duration(seconds: 2),(){
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  });
                  ScaffoldMessenger.of(context).showMaterialBanner(materialbanner);
                },
                child: Text('Simple Material Banner')),
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

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/cidade.dart';

class CidadesPage extends StatefulWidget {
  const CidadesPage({Key? key}) : super(key: key);

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _laodCities();
  }
  Future<void> _laodCities()async{
    final cidadesJson = await rootBundle.loadString('assets/cidades.json');//leitura do arquivo que se encontra o assets(async)
    setState(() {
      var cidadeList = json.decode(cidadesJson);//convertendo o valor para uma mpa ad e chave e e vallor(convertendo em uma lista)
      cidades = cidadeList.map<Cidade>((city) => Cidade.fromMap(city)).toList();//transformando uma lista em cidade
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cidade Page"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: cidades.length, itemBuilder: (context, index) {
              var cidade = cidades[index];
              return ListTile(
                title: Text(cidade.cidade),
                subtitle: Text(cidade.estado),
              );
        }),
      ),
    );
  }
}

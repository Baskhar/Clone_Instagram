import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final formKey =
  GlobalKey<FormState>(); //variavel que fará a validação dor formulário
  final textController = TextEditingController();
  String categoria = 'Caregoria 1';

  @override
  void dispose() {
    //sempre utilizar esse método, para quando a tela for descartada ele descartar os controllers
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    controller: textController,
                    maxLines: null, //máximo de linhas
                    decoration: InputDecoration(
                        labelText: 'Nome completo',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    validator: (String? value) {
                      //sempre string
                      if (value == null || value.isEmpty) {
                        //se retornar uma string, está invalido, se retornar nulo está válido
                        return "Campo não preenchido!!!"; //fazendoa validação do campo
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Text('O texto é ${textController.text}'),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField<String>(
                    value: categoria,
                      validator: (String? value){

                        if(value==null || value.isEmpty){
                          return 'Caregoria não preenchida';
                        }
                      },
                      items: [
                    DropdownMenuItem(
                        child: Text("Caregoria 1"), value: "Caregoria 1"),
                    DropdownMenuItem(
                      child: Text("Caregoria 2"), value: "Caregoria 2",),
                    DropdownMenuItem(
                      child: Text("Caregoria 3"), value: "Caregoria 3",),
                  ], onChanged: (String? newValue) {
                      if(newValue!= null){
                        setState(() {
                          categoria = newValue;
                        });
                      }
                  }),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var formValid = formKey.currentState?.validate() ??
                            false; //verificar se o form está valido
                        var message = 'Formulário Inválido!';
                        if (formValid) {
                          message = "formulário válido ${textController.text}";
                        }
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(message)));
                      },
                      child: Text('Salvar')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

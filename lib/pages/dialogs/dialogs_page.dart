import 'package:flutter/material.dart';
import 'package:terceiro_projeto/pages/dialogs/dialog_cursoflutter.dart';

class DialogsPage extends StatefulWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  State<DialogsPage> createState() => _DialogsPageState();
}

class _DialogsPageState extends State<DialogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DialogsPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false, //impede de fechar ao clicar fora
                    context: context,
                    builder: (context) {
                      return DialogCursoFlutter(context);
                    },
                  );
                },
                child: Text("Dialog")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          //usando para lista de itens
                          title: Text("Simple Dialog"),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('TituloX'),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Fechar Dialog'))
                          ],
                        );
                      });
                },
                child: Text("Simple Dialog")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          //utilizado para fazer confirmação
                          title: Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('Deseja Realmente Salvar???'),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {}, child: Text('Cancelar')),
                            TextButton(
                                onPressed: () {}, child: Text('Confirmar')),
                          ],
                        );
                      });
                },
                child: Text("Alert Dialog")),
            ElevatedButton(
                onPressed: () async{
                  final selectedTime= await showTimePicker(//dialog de tempo
                      context: context, initialTime: TimeOfDay.now());
                  print('O horario selecionado foi $selectedTime');
                },

                child: Text("Timer Pikcer")),
            ElevatedButton(onPressed: () {
              showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1), lastDate: DateTime(2100));
            }, child: Text("Date Picker")),
          ],
        ),
      ),
    );
  }
}

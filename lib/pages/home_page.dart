import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/widgets/input_widget.dart';

class HomePageState extends State<HomePage> {
  var listaUsuario = <String>[];
  var nomeInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children: [
          inputWidget(title: "Digite um nome", controller: nomeInputController),
          Expanded(
            child: ListView.builder(
                itemCount: listaUsuario.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () => removerNomeLista(index),
                    ),
                    title: Text(listaUsuario[index]),
                  );
                }),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: adicionarNomeLista, child: Icon(Icons.add)),
    );
  }

  void removerNomeLista(int index) {
    setState(() {
      listaUsuario.removeAt(index);
    });
  }

  void adicionarNomeLista() {
    setState(() {
      listaUsuario.add(nomeInputController.text);
      nomeInputController.clear();
    });
  }
}

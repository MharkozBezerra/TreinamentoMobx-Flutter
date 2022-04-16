import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pessoal_mobx/controller.dart';
import 'package:pessoal_mobx/controller.princial.dart';
import 'package:provider/provider.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final ControllerPrincial _controllerPrincial = ControllerPrincial();

  _dialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text("Adicionar item"),
            content: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Digite uma descrição..."),
              onChanged: _controllerPrincial.setNovoItem,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    _controllerPrincial.adicionarItens();
                    Navigator.pop(context);
                  },
                  child: const Text("Salvar"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final _controller = Provider.of<Controller>(context);

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return Text(_controller.nome);
          },
        ),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: _controllerPrincial.listaItens.length,
            itemBuilder: (_, indice) {
              var item = _controllerPrincial.listaItens[indice];
              return Observer(builder: (_) {
                return ListTile(
                  title: Text(item.titulo),
                  leading: Checkbox(
                    value: item.marcado,
                    onChanged: (v) {
                      item.setMarcado(v != null);
                    },
                  ),
                  onTap: () {
                    item.marcado = !item.marcado;
                  },
                );
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}

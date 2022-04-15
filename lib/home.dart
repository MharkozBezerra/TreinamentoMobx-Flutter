import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pessoal_mobx/controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(16),
            //   child: Observer(
            //     builder: (_) {
            //       return Text(
            //         "${_controller.contador}",
            //         style: const TextStyle(
            //           color: Colors.black,
            //           fontSize: 80,
            //         ),
            //       );
            //     },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                  onChanged: _controller.setEmail),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                  decoration: const InputDecoration(
                    labelText: "Senha",
                  ),
                  onChanged: _controller.setSenha),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (_) {
                  return Text(
                    _controller.formularioValido
                        ? "Formulário Válido"
                        : "Campos não validados",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (_) {
                  return ElevatedButton(
                    child: const Text(
                      "Logar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    onPressed: _controller.formularioValido
                        ? () {
                            //print("Vamos dizer que você clicou no botão");
                          }
                        : null,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

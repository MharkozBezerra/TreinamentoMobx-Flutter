import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:pessoal_mobx/controller.dart';

class HomeValidacaoFormulario extends StatefulWidget {
  const HomeValidacaoFormulario({Key? key}) : super(key: key);

  @override
  State<HomeValidacaoFormulario> createState() =>
      _HomeValidacaoFormularioState();
}

class _HomeValidacaoFormularioState extends State<HomeValidacaoFormulario> {
  final Controller _controller = Controller();
  late ReactionDisposer reactionDisposer;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    reactionDisposer = reaction(
      (_) => _controller.formularioValido,
      (valor) {},
    );
  }

  @override
  void dispose() {
    reactionDisposer();
    // TODO: implement dispose
    super.dispose();
  }

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
                    child: _controller.carregando
                        ? const CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          )
                        : const Text(
                            "Logar",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                    onPressed: _controller.formularioValido
                        ? () {
                            _controller.logar();
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

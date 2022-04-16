import 'package:flutter/material.dart';
import 'package:pessoal_mobx/home.validacao.formulario.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        Provider<Controller>(create: (_) => Controller()),
      ],
      child: const MaterialApp(
        home: HomeValidacaoFormulario(),
      )));
}

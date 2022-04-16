# pessoal_mobx

Treinamento para MobX

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


 Dependencias:
 - [Mobx][https://pub.dev/packages/mobx] : # Gerenciador de estado do projeto
 - [Flutter Mobx][https://pub.dev/packages/flutter_mobx] : # Necess´ario para rodar o projeto mobx no mobile.
 - [Build Runner](https://pub.dev/packages/build_runner) : # Rodar o projeto☻
 - [MobX CodeGen](https://pub.dev/packages/mobx_codegen) : # Reescreve o co´digo gereado pelo MobX
 - [Provider] (https://pub.dev/packages/provider)        : # Gerenciados e distribuidor de classes

 ```dart
    //  Use as informações em pubspec.yaml
    dependencies:
        mobx: ^2.0.6+1
        flutter_mobx: ^2.0.4
        provider: ^6.0.2

    dev_dependencies:
        # Usados somente para desenvolvimento
        mobx_codegen: ^2.0.5+2
        build_runner: ^2.1.9
 ```

 Para gerar a versão,  rode os comandos:

 - flutter pub run build_runner build - modo produção
 - flutter pub run build_runner watch - mode em tempo real, alterou rodou
 - flutter pub run build_runner serve - o memso que watch porem funciona melhor, para teste dierecinado a porta 8080 e 8081 da aplicação,
 - flutter pub run build_runner teste - Roda uma simples contrução de teste 

 ## (ValoresComputados) [NESSE COMMIT MOSTRO COMO CRIAR UMA VALIDAÇÃO SIMPLES DE UM FORMULÁRIO ] ##
 use o arquivo: home.validacao.formulario.dart
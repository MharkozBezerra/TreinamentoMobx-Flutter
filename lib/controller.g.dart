// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  Computed<bool>? _$formularioValidoComputed;

  @override
  bool get formularioValido => (_$formularioValidoComputed ??= Computed<bool>(
          () => super.formularioValido,
          name: 'ControllerBase.formularioValido'))
      .value;

  final _$contadorAtom = Atom(name: 'ControllerBase.contador');

  @override
  int get contador {
    _$contadorAtom.reportRead();
    return super.contador;
  }

  @override
  set contador(int value) {
    _$contadorAtom.reportWrite(value, super.contador, () {
      super.contador = value;
    });
  }

  final _$_emailAtom = Atom(name: 'ControllerBase._email');

  @override
  String get _email {
    _$_emailAtom.reportRead();
    return super._email;
  }

  @override
  set _email(String value) {
    _$_emailAtom.reportWrite(value, super._email, () {
      super._email = value;
    });
  }

  final _$_senhaAtom = Atom(name: 'ControllerBase._senha');

  @override
  String get _senha {
    _$_senhaAtom.reportRead();
    return super._senha;
  }

  @override
  set _senha(String value) {
    _$_senhaAtom.reportWrite(value, super._senha, () {
      super._senha = value;
    });
  }

  final _$carregandoAtom = Atom(name: 'ControllerBase.carregando');

  @override
  bool get carregando {
    _$carregandoAtom.reportRead();
    return super.carregando;
  }

  @override
  set carregando(bool value) {
    _$carregandoAtom.reportWrite(value, super.carregando, () {
      super.carregando = value;
    });
  }

  final _$usuarioLogadoAtom = Atom(name: 'ControllerBase.usuarioLogado');

  @override
  bool get usuarioLogado {
    _$usuarioLogadoAtom.reportRead();
    return super.usuarioLogado;
  }

  @override
  set usuarioLogado(bool value) {
    _$usuarioLogadoAtom.reportWrite(value, super.usuarioLogado, () {
      super.usuarioLogado = value;
    });
  }

  final _$logarAsyncAction = AsyncAction('ControllerBase.logar');

  @override
  Future<void> logar() {
    return _$logarAsyncAction.run(() => super.logar());
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  void setEmail(String v) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setEmail');
    try {
      return super.setEmail(v);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String v) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setSenha');
    try {
      return super.setSenha(v);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementar() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.incrementar');
    try {
      return super.incrementar();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contador: ${contador},
carregando: ${carregando},
usuarioLogado: ${usuarioLogado},
formularioValido: ${formularioValido}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.controller.princial.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IemControllerPrincial on IemControllerPrincialBase, Store {
  final _$marcadoAtom = Atom(name: 'IemControllerPrincialBase.marcado');

  @override
  bool get marcado {
    _$marcadoAtom.reportRead();
    return super.marcado;
  }

  @override
  set marcado(bool value) {
    _$marcadoAtom.reportWrite(value, super.marcado, () {
      super.marcado = value;
    });
  }

  final _$IemControllerPrincialBaseActionController =
      ActionController(name: 'IemControllerPrincialBase');

  @override
  void setMarcado(bool v) {
    final _$actionInfo = _$IemControllerPrincialBaseActionController
        .startAction(name: 'IemControllerPrincialBase.setMarcado');
    try {
      return super.setMarcado(v);
    } finally {
      _$IemControllerPrincialBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
marcado: ${marcado}
    ''';
  }
}

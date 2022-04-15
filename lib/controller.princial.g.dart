// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.princial.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerPrincial on ControllerPrincialBase, Store {
  final _$nomeItemAtom = Atom(name: 'ControllerPrincialBase.nomeItem');

  @override
  String get nomeItem {
    _$nomeItemAtom.reportRead();
    return super.nomeItem;
  }

  @override
  set nomeItem(String value) {
    _$nomeItemAtom.reportWrite(value, super.nomeItem, () {
      super.nomeItem = value;
    });
  }

  final _$ControllerPrincialBaseActionController =
      ActionController(name: 'ControllerPrincialBase');

  @override
  void setNovoItem(String v) {
    final _$actionInfo = _$ControllerPrincialBaseActionController.startAction(
        name: 'ControllerPrincialBase.setNovoItem');
    try {
      return super.setNovoItem(v);
    } finally {
      _$ControllerPrincialBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nomeItem: ${nomeItem}
    ''';
  }
}

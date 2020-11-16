// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagina1_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $Pagina1Controller = BindInject(
  (i) => Pagina1Controller(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Pagina1Controller on _Pagina1ControllerBase, Store {
  final _$valueAtom = Atom(name: '_Pagina1ControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_Pagina1ControllerBaseActionController =
      ActionController(name: '_Pagina1ControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_Pagina1ControllerBaseActionController.startAction(
        name: '_Pagina1ControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_Pagina1ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}

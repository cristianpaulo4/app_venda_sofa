// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagina2_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $Pagina2Controller = BindInject(
  (i) => Pagina2Controller(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Pagina2Controller on _Pagina2ControllerBase, Store {
  final _$valueAtom = Atom(name: '_Pagina2ControllerBase.value');

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

  final _$_Pagina2ControllerBaseActionController =
      ActionController(name: '_Pagina2ControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_Pagina2ControllerBaseActionController.startAction(
        name: '_Pagina2ControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_Pagina2ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}

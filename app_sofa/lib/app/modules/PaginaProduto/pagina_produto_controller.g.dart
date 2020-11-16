// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagina_produto_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PaginaProdutoController = BindInject(
  (i) => PaginaProdutoController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PaginaProdutoController on _PaginaProdutoControllerBase, Store {
  final _$valueAtom = Atom(name: '_PaginaProdutoControllerBase.value');

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

  final _$_PaginaProdutoControllerBaseActionController =
      ActionController(name: '_PaginaProdutoControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PaginaProdutoControllerBaseActionController
        .startAction(name: '_PaginaProdutoControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PaginaProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}

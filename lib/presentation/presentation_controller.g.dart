// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PresentationController on _PresentationControllerBase, Store {
  final _$selectedIndexAtom =
      Atom(name: '_PresentationControllerBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$_PresentationControllerBaseActionController =
      ActionController(name: '_PresentationControllerBase');

  @override
  void setSelectedIndex(int index) {
    final _$actionInfo = _$_PresentationControllerBaseActionController
        .startAction(name: '_PresentationControllerBase.setSelectedIndex');
    try {
      return super.setSelectedIndex(index);
    } finally {
      _$_PresentationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}

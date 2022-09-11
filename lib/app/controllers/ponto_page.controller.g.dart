// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ponto_page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PontoPageController on _PontoPageControllerBase, Store {
  final _$loadingAtom = Atom(name: '_PontoPageControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$pontoAtom = Atom(name: '_PontoPageControllerBase.ponto');

  @override
  List<dynamic> get ponto {
    _$pontoAtom.reportRead();
    return super.ponto;
  }

  @override
  set ponto(List<dynamic> value) {
    _$pontoAtom.reportWrite(value, super.ponto, () {
      super.ponto = value;
    });
  }

  final _$txtheightControllerAtom =
      Atom(name: '_PontoPageControllerBase.txtheightController');

  @override
  TextEditingController get txtheightController {
    _$txtheightControllerAtom.reportRead();
    return super.txtheightController;
  }

  @override
  set txtheightController(TextEditingController value) {
    _$txtheightControllerAtom.reportWrite(value, super.txtheightController, () {
      super.txtheightController = value;
    });
  }

  final _$txtangleControllerAtom =
      Atom(name: '_PontoPageControllerBase.txtangleController');

  @override
  TextEditingController get txtangleController {
    _$txtangleControllerAtom.reportRead();
    return super.txtangleController;
  }

  @override
  set txtangleController(TextEditingController value) {
    _$txtangleControllerAtom.reportWrite(value, super.txtangleController, () {
      super.txtangleController = value;
    });
  }

  final _$txtFiControllerAtom =
      Atom(name: '_PontoPageControllerBase.txtFiController');

  @override
  TextEditingController get txtFiController {
    _$txtFiControllerAtom.reportRead();
    return super.txtFiController;
  }

  @override
  set txtFiController(TextEditingController value) {
    _$txtFiControllerAtom.reportWrite(value, super.txtFiController, () {
      super.txtFiController = value;
    });
  }

  final _$txtFmControllerAtom =
      Atom(name: '_PontoPageControllerBase.txtFmController');

  @override
  TextEditingController get txtFmController {
    _$txtFmControllerAtom.reportRead();
    return super.txtFmController;
  }

  @override
  set txtFmController(TextEditingController value) {
    _$txtFmControllerAtom.reportWrite(value, super.txtFmController, () {
      super.txtFmController = value;
    });
  }

  final _$txtFsControllerAtom =
      Atom(name: '_PontoPageControllerBase.txtFsController');

  @override
  TextEditingController get txtFsController {
    _$txtFsControllerAtom.reportRead();
    return super.txtFsController;
  }

  @override
  set txtFsController(TextEditingController value) {
    _$txtFsControllerAtom.reportWrite(value, super.txtFsController, () {
      super.txtFsController = value;
    });
  }

  final _$txtPointVControllerAtom =
      Atom(name: '_PontoPageControllerBase.txtPointVController');

  @override
  TextEditingController get txtPointVController {
    _$txtPointVControllerAtom.reportRead();
    return super.txtPointVController;
  }

  @override
  set txtPointVController(TextEditingController value) {
    _$txtPointVControllerAtom.reportWrite(value, super.txtPointVController, () {
      super.txtPointVController = value;
    });
  }

  final _$formKeyAtom = Atom(name: '_PontoPageControllerBase.formKey');

  @override
  GlobalKey<FormState> get formKey {
    _$formKeyAtom.reportRead();
    return super.formKey;
  }

  @override
  set formKey(GlobalKey<FormState> value) {
    _$formKeyAtom.reportWrite(value, super.formKey, () {
      super.formKey = value;
    });
  }

  final _$getDataAsyncAction = AsyncAction('_PontoPageControllerBase.getData');

  @override
  Future<dynamic> getData(int projetoId) {
    return _$getDataAsyncAction.run(() => super.getData(projetoId));
  }

  final _$createPointAsyncAction =
      AsyncAction('_PontoPageControllerBase.createPoint');

  @override
  Future<dynamic> createPoint(BuildContext context) {
    return _$createPointAsyncAction.run(() => super.createPoint(context));
  }

  final _$validateFormAndCreatePointAsyncAction =
      AsyncAction('_PontoPageControllerBase.validateFormAndCreatePoint');

  @override
  Future<dynamic> validateFormAndCreatePoint(BuildContext context) {
    return _$validateFormAndCreatePointAsyncAction
        .run(() => super.validateFormAndCreatePoint(context));
  }

  final _$deletePointAsyncAction =
      AsyncAction('_PontoPageControllerBase.deletePoint');

  @override
  Future<dynamic> deletePoint(int pointId, int index) {
    return _$deletePointAsyncAction
        .run(() => super.deletePoint(pointId, index));
  }

  final _$_PontoPageControllerBaseActionController =
      ActionController(name: '_PontoPageControllerBase');

  @override
  dynamic calculate(dynamic height, dynamic angle, dynamic fi, dynamic fm,
      dynamic fs, dynamic pointV) {
    final _$actionInfo = _$_PontoPageControllerBaseActionController.startAction(
        name: '_PontoPageControllerBase.calculate');
    try {
      return super.calculate(height, angle, fi, fm, fs, pointV);
    } finally {
      _$_PontoPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
ponto: ${ponto},
txtheightController: ${txtheightController},
txtangleController: ${txtangleController},
txtFiController: ${txtFiController},
txtFmController: ${txtFmController},
txtFsController: ${txtFsController},
txtPointVController: ${txtPointVController},
formKey: ${formKey}
    ''';
  }
}

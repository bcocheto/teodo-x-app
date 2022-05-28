// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PointPageController on _PointPageControllerBase, Store {
  final _$loadingAtom = Atom(name: '_PointPageControllerBase.loading');

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

  final _$pointsAtom = Atom(name: '_PointPageControllerBase.points');

  @override
  List<Point> get points {
    _$pointsAtom.reportRead();
    return super.points;
  }

  @override
  set points(List<Point> value) {
    _$pointsAtom.reportWrite(value, super.points, () {
      super.points = value;
    });
  }

  final _$txtheightControllerAtom =
      Atom(name: '_PointPageControllerBase.txtheightController');

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
      Atom(name: '_PointPageControllerBase.txtangleController');

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
      Atom(name: '_PointPageControllerBase.txtFiController');

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
      Atom(name: '_PointPageControllerBase.txtFmController');

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
      Atom(name: '_PointPageControllerBase.txtFsController');

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
      Atom(name: '_PointPageControllerBase.txtPointVController');

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

  final _$formKeyAtom = Atom(name: '_PointPageControllerBase.formKey');

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

  final _$getDataAsyncAction = AsyncAction('_PointPageControllerBase.getData');

  @override
  Future<dynamic> getData(int projectId) {
    return _$getDataAsyncAction.run(() => super.getData(projectId));
  }

  final _$createPointAsyncAction =
      AsyncAction('_PointPageControllerBase.createPoint');

  @override
  Future<dynamic> createPoint(BuildContext context) {
    return _$createPointAsyncAction.run(() => super.createPoint(context));
  }

  final _$validateFormAndCreatePointAsyncAction =
      AsyncAction('_PointPageControllerBase.validateFormAndCreatePoint');

  @override
  Future<dynamic> validateFormAndCreatePoint(BuildContext context) {
    return _$validateFormAndCreatePointAsyncAction
        .run(() => super.validateFormAndCreatePoint(context));
  }

  final _$deletePointAsyncAction =
      AsyncAction('_PointPageControllerBase.deletePoint');

  @override
  Future<dynamic> deletePoint(int pointId, int index) {
    return _$deletePointAsyncAction
        .run(() => super.deletePoint(pointId, index));
  }

  final _$_PointPageControllerBaseActionController =
      ActionController(name: '_PointPageControllerBase');

  @override
  dynamic calculate(dynamic height, dynamic angle, dynamic fi, dynamic fm,
      dynamic fs, dynamic pointV) {
    final _$actionInfo = _$_PointPageControllerBaseActionController.startAction(
        name: '_PointPageControllerBase.calculate');
    try {
      return super.calculate(height, angle, fi, fm, fs, pointV);
    } finally {
      _$_PointPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
points: ${points},
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projeto_page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProjetoPageController on _ProjetoPageControllerBase, Store {
  final _$loadingAtom = Atom(name: '_ProjetoPageControllerBase.loading');

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

  final _$formKeyAtom = Atom(name: '_ProjetoPageControllerBase.formKey');

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

  final _$txtProjetoControllerAtom =
      Atom(name: '_ProjetoPageControllerBase.txtProjetoController');

  @override
  TextEditingController get txtProjetoController {
    _$txtProjetoControllerAtom.reportRead();
    return super.txtProjetoController;
  }

  @override
  set txtProjetoController(TextEditingController value) {
    _$txtProjetoControllerAtom.reportWrite(value, super.txtProjetoController,
        () {
      super.txtProjetoController = value;
    });
  }

  final _$projetoAtom = Atom(name: '_ProjetoPageControllerBase.projeto');

  @override
  List<Projeto> get projeto {
    _$projetoAtom.reportRead();
    return super.projeto;
  }

  @override
  set projeto(List<Projeto> value) {
    _$projetoAtom.reportWrite(value, super.projeto, () {
      super.projeto = value;
    });
  }

  final _$getDataAsyncAction =
      AsyncAction('_ProjetoPageControllerBase.getData');

  @override
  Future<dynamic> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  final _$validateFormAndCreateProjectAsyncAction =
      AsyncAction('_ProjetoPageControllerBase.validateFormAndCreateProject');

  @override
  Future<dynamic> validateFormAndCreateProject(BuildContext context) {
    return _$validateFormAndCreateProjectAsyncAction
        .run(() => super.validateFormAndCreateProject(context));
  }

  final _$deleteProjectAsyncAction =
      AsyncAction('_ProjetoPageControllerBase.deleteProject');

  @override
  Future<dynamic> deleteProject(int projectId, int index) {
    return _$deleteProjectAsyncAction
        .run(() => super.deleteProject(projectId, index));
  }

  final _$_ProjetoPageControllerBaseActionController =
      ActionController(name: '_ProjetoPageControllerBase');

  @override
  void createProjeto(BuildContext context) {
    final _$actionInfo = _$_ProjetoPageControllerBaseActionController
        .startAction(name: '_ProjetoPageControllerBase.createProjeto');
    try {
      return super.createProjeto(context);
    } finally {
      _$_ProjetoPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
formKey: ${formKey},
txtProjetoController: ${txtProjetoController},
projeto: ${projeto}
    ''';
  }
}

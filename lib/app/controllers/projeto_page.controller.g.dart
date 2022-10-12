// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projeto_page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProjetoPageController on _ProjetoPageControllerBase, Store {
  late final _$loadingAtom =
      Atom(name: '_ProjetoPageControllerBase.loading', context: context);

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

  late final _$formKeyAtom =
      Atom(name: '_ProjetoPageControllerBase.formKey', context: context);

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

  late final _$txtProjetoControllerAtom = Atom(
      name: '_ProjetoPageControllerBase.txtProjetoController',
      context: context);

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

  late final _$projetoAtom =
      Atom(name: '_ProjetoPageControllerBase.projeto', context: context);

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

  late final _$getDataAsyncAction =
      AsyncAction('_ProjetoPageControllerBase.getData', context: context);

  @override
  Future<dynamic> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  late final _$validateFormAndCreateProjectAsyncAction = AsyncAction(
      '_ProjetoPageControllerBase.validateFormAndCreateProject',
      context: context);

  @override
  Future<dynamic> validateFormAndCreateProject(BuildContext context) {
    return _$validateFormAndCreateProjectAsyncAction
        .run(() => super.validateFormAndCreateProject(context));
  }

  late final _$updateProjectAsyncAction =
      AsyncAction('_ProjetoPageControllerBase.updateProject', context: context);

  @override
  Future<dynamic> updateProject(BuildContext context) {
    return _$updateProjectAsyncAction.run(() => super.updateProject(context));
  }

  late final _$deleteProjectAsyncAction =
      AsyncAction('_ProjetoPageControllerBase.deleteProject', context: context);

  @override
  Future<dynamic> deleteProject(int projectId, int index) {
    return _$deleteProjectAsyncAction
        .run(() => super.deleteProject(projectId, index));
  }

  late final _$_ProjetoPageControllerBaseActionController =
      ActionController(name: '_ProjetoPageControllerBase', context: context);

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
  void updateProjeto(BuildContext context) {
    final _$actionInfo = _$_ProjetoPageControllerBaseActionController
        .startAction(name: '_ProjetoPageControllerBase.updateProjeto');
    try {
      return super.updateProjeto(context);
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

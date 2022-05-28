// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProjectPageController on _ProjectPageControllerBase, Store {
  final _$loadingAtom = Atom(name: '_ProjectPageControllerBase.loading');

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

  final _$projectsAtom = Atom(name: '_ProjectPageControllerBase.projects');

  @override
  List<Project> get projects {
    _$projectsAtom.reportRead();
    return super.projects;
  }

  @override
  set projects(List<Project> value) {
    _$projectsAtom.reportWrite(value, super.projects, () {
      super.projects = value;
    });
  }

  final _$txtProjectControllerAtom =
      Atom(name: '_ProjectPageControllerBase.txtProjectController');

  @override
  TextEditingController get txtProjectController {
    _$txtProjectControllerAtom.reportRead();
    return super.txtProjectController;
  }

  @override
  set txtProjectController(TextEditingController value) {
    _$txtProjectControllerAtom.reportWrite(value, super.txtProjectController,
        () {
      super.txtProjectController = value;
    });
  }

  final _$formKeyAtom = Atom(name: '_ProjectPageControllerBase.formKey');

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

  final _$getDataAsyncAction =
      AsyncAction('_ProjectPageControllerBase.getData');

  @override
  Future<dynamic> getData(int groupId) {
    return _$getDataAsyncAction.run(() => super.getData(groupId));
  }

  final _$createProjectAsyncAction =
      AsyncAction('_ProjectPageControllerBase.createProject');

  @override
  Future<dynamic> createProject(BuildContext context) {
    return _$createProjectAsyncAction.run(() => super.createProject(context));
  }

  final _$validateFormAndCreateProjectAsyncAction =
      AsyncAction('_ProjectPageControllerBase.validateFormAndCreateProject');

  @override
  Future<dynamic> validateFormAndCreateProject(BuildContext context) {
    return _$validateFormAndCreateProjectAsyncAction
        .run(() => super.validateFormAndCreateProject(context));
  }

  final _$deleteProjectAsyncAction =
      AsyncAction('_ProjectPageControllerBase.deleteProject');

  @override
  Future<dynamic> deleteProject(int projectId, int index) {
    return _$deleteProjectAsyncAction
        .run(() => super.deleteProject(projectId, index));
  }

  @override
  String toString() {
    return '''
loading: ${loading},
projects: ${projects},
txtProjectController: ${txtProjectController},
formKey: ${formKey}
    ''';
  }
}

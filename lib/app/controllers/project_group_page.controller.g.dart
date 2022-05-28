// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_group_page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProjectGroupPageController on _ProjectGroupPageControllerBase, Store {
  final _$loadingAtom = Atom(name: '_ProjectGroupPageControllerBase.loading');

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

  final _$formKeyAtom = Atom(name: '_ProjectGroupPageControllerBase.formKey');

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

  final _$txtProjectGroupControllerAtom =
      Atom(name: '_ProjectGroupPageControllerBase.txtProjectGroupController');

  @override
  TextEditingController get txtProjectGroupController {
    _$txtProjectGroupControllerAtom.reportRead();
    return super.txtProjectGroupController;
  }

  @override
  set txtProjectGroupController(TextEditingController value) {
    _$txtProjectGroupControllerAtom
        .reportWrite(value, super.txtProjectGroupController, () {
      super.txtProjectGroupController = value;
    });
  }

  final _$projectGroupAtom =
      Atom(name: '_ProjectGroupPageControllerBase.projectGroup');

  @override
  List<ProjectGroup> get projectGroup {
    _$projectGroupAtom.reportRead();
    return super.projectGroup;
  }

  @override
  set projectGroup(List<ProjectGroup> value) {
    _$projectGroupAtom.reportWrite(value, super.projectGroup, () {
      super.projectGroup = value;
    });
  }

  final _$getDataAsyncAction =
      AsyncAction('_ProjectGroupPageControllerBase.getData');

  @override
  Future<dynamic> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  final _$validateFormAndCreateProjectGroupAsyncAction = AsyncAction(
      '_ProjectGroupPageControllerBase.validateFormAndCreateProjectGroup');

  @override
  Future<dynamic> validateFormAndCreateProjectGroup(BuildContext context) {
    return _$validateFormAndCreateProjectGroupAsyncAction
        .run(() => super.validateFormAndCreateProjectGroup(context));
  }

  final _$_ProjectGroupPageControllerBaseActionController =
      ActionController(name: '_ProjectGroupPageControllerBase');

  @override
  void createProjectGroup(BuildContext context) {
    final _$actionInfo =
        _$_ProjectGroupPageControllerBaseActionController.startAction(
            name: '_ProjectGroupPageControllerBase.createProjectGroup');
    try {
      return super.createProjectGroup(context);
    } finally {
      _$_ProjectGroupPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
formKey: ${formKey},
txtProjectGroupController: ${txtProjectGroupController},
projectGroup: ${projectGroup}
    ''';
  }
}

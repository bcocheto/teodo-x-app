// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ponto_page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PontoPageController on _PontoPageControllerBase, Store {
  late final _$loadingAtom =
      Atom(name: '_PontoPageControllerBase.loading', context: context);

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

  late final _$pontosAtom =
      Atom(name: '_PontoPageControllerBase.pontos', context: context);

  @override
  List<dynamic> get pontos {
    _$pontosAtom.reportRead();
    return super.pontos;
  }

  @override
  set pontos(List<dynamic> value) {
    _$pontosAtom.reportWrite(value, super.pontos, () {
      super.pontos = value;
    });
  }

  late final _$txtAlturaAtom =
      Atom(name: '_PontoPageControllerBase.txtAltura', context: context);

  @override
  TextEditingController get txtAltura {
    _$txtAlturaAtom.reportRead();
    return super.txtAltura;
  }

  @override
  set txtAltura(TextEditingController value) {
    _$txtAlturaAtom.reportWrite(value, super.txtAltura, () {
      super.txtAltura = value;
    });
  }

  late final _$txtNomeAtom =
      Atom(name: '_PontoPageControllerBase.txtNome', context: context);

  @override
  TextEditingController get txtNome {
    _$txtNomeAtom.reportRead();
    return super.txtNome;
  }

  @override
  set txtNome(TextEditingController value) {
    _$txtNomeAtom.reportWrite(value, super.txtNome, () {
      super.txtNome = value;
    });
  }

  late final _$txtDescricaoAtom =
      Atom(name: '_PontoPageControllerBase.txtDescricao', context: context);

  @override
  TextEditingController get txtDescricao {
    _$txtDescricaoAtom.reportRead();
    return super.txtDescricao;
  }

  @override
  set txtDescricao(TextEditingController value) {
    _$txtDescricaoAtom.reportWrite(value, super.txtDescricao, () {
      super.txtDescricao = value;
    });
  }

  late final _$txtPontoVisadoAtom =
      Atom(name: '_PontoPageControllerBase.txtPontoVisado', context: context);

  @override
  TextEditingController get txtPontoVisado {
    _$txtPontoVisadoAtom.reportRead();
    return super.txtPontoVisado;
  }

  @override
  set txtPontoVisado(TextEditingController value) {
    _$txtPontoVisadoAtom.reportWrite(value, super.txtPontoVisado, () {
      super.txtPontoVisado = value;
    });
  }

  late final _$txtAnguloHorizontalAtom = Atom(
      name: '_PontoPageControllerBase.txtAnguloHorizontal', context: context);

  @override
  TextEditingController get txtAnguloHorizontal {
    _$txtAnguloHorizontalAtom.reportRead();
    return super.txtAnguloHorizontal;
  }

  @override
  set txtAnguloHorizontal(TextEditingController value) {
    _$txtAnguloHorizontalAtom.reportWrite(value, super.txtAnguloHorizontal, () {
      super.txtAnguloHorizontal = value;
    });
  }

  late final _$txtFioInferiorAtom =
      Atom(name: '_PontoPageControllerBase.txtFioInferior', context: context);

  @override
  TextEditingController get txtFioInferior {
    _$txtFioInferiorAtom.reportRead();
    return super.txtFioInferior;
  }

  @override
  set txtFioInferior(TextEditingController value) {
    _$txtFioInferiorAtom.reportWrite(value, super.txtFioInferior, () {
      super.txtFioInferior = value;
    });
  }

  late final _$txtFioSuperiorAtom =
      Atom(name: '_PontoPageControllerBase.txtFioSuperior', context: context);

  @override
  TextEditingController get txtFioSuperior {
    _$txtFioSuperiorAtom.reportRead();
    return super.txtFioSuperior;
  }

  @override
  set txtFioSuperior(TextEditingController value) {
    _$txtFioSuperiorAtom.reportWrite(value, super.txtFioSuperior, () {
      super.txtFioSuperior = value;
    });
  }

  late final _$txtFioMedioAtom =
      Atom(name: '_PontoPageControllerBase.txtFioMedio', context: context);

  @override
  TextEditingController get txtFioMedio {
    _$txtFioMedioAtom.reportRead();
    return super.txtFioMedio;
  }

  @override
  set txtFioMedio(TextEditingController value) {
    _$txtFioMedioAtom.reportWrite(value, super.txtFioMedio, () {
      super.txtFioMedio = value;
    });
  }

  late final _$txtdistanciaReduzidaAtom = Atom(
      name: '_PontoPageControllerBase.txtdistanciaReduzida', context: context);

  @override
  TextEditingController get txtdistanciaReduzida {
    _$txtdistanciaReduzidaAtom.reportRead();
    return super.txtdistanciaReduzida;
  }

  @override
  set txtdistanciaReduzida(TextEditingController value) {
    _$txtdistanciaReduzidaAtom.reportWrite(value, super.txtdistanciaReduzida,
        () {
      super.txtdistanciaReduzida = value;
    });
  }

  late final _$formKeyAtom =
      Atom(name: '_PontoPageControllerBase.formKey', context: context);

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

  late final _$getDataAsyncAction =
      AsyncAction('_PontoPageControllerBase.getData', context: context);

  @override
  Future<dynamic> getData(dynamic projetoId) {
    return _$getDataAsyncAction.run(() => super.getData(projetoId));
  }

  late final _$createPointAsyncAction =
      AsyncAction('_PontoPageControllerBase.createPoint', context: context);

  @override
  Future<dynamic> createPoint(BuildContext context) {
    return _$createPointAsyncAction.run(() => super.createPoint(context));
  }

  late final _$calculateDRAsyncAction =
      AsyncAction('_PontoPageControllerBase.calculateDR', context: context);

  @override
  Future calculateDR(dynamic angle, dynamic fi, dynamic fs) {
    return _$calculateDRAsyncAction.run(() => super.calculateDR(angle, fi, fs));
  }

  late final _$calculateDNAsyncAction =
      AsyncAction('_PontoPageControllerBase.calculateDN', context: context);

  @override
  Future calculateDN(dynamic dr, dynamic height, dynamic angle, dynamic fm) {
    return _$calculateDNAsyncAction
        .run(() => super.calculateDN(dr, height, angle, fm));
  }

  late final _$validateFormAndCreatePointAsyncAction = AsyncAction(
      '_PontoPageControllerBase.validateFormAndCreatePoint',
      context: context);

  @override
  Future<dynamic> validateFormAndCreatePoint(BuildContext context) {
    return _$validateFormAndCreatePointAsyncAction
        .run(() => super.validateFormAndCreatePoint(context));
  }

  late final _$deletePointAsyncAction =
      AsyncAction('_PontoPageControllerBase.deletePoint', context: context);

  @override
  Future<dynamic> deletePoint(
      BuildContext context, dynamic pointId, dynamic index, dynamic projectId) {
    return _$deletePointAsyncAction
        .run(() => super.deletePoint(context, pointId, index, projectId));
  }

  late final _$_PontoPageControllerBaseActionController =
      ActionController(name: '_PontoPageControllerBase', context: context);

  @override
  dynamic clear() {
    final _$actionInfo = _$_PontoPageControllerBaseActionController.startAction(
        name: '_PontoPageControllerBase.clear');
    try {
      return super.clear();
    } finally {
      _$_PontoPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
pontos: ${pontos},
txtAltura: ${txtAltura},
txtNome: ${txtNome},
txtDescricao: ${txtDescricao},
txtPontoVisado: ${txtPontoVisado},
txtAnguloHorizontal: ${txtAnguloHorizontal},
txtFioInferior: ${txtFioInferior},
txtFioSuperior: ${txtFioSuperior},
txtFioMedio: ${txtFioMedio},
txtdistanciaReduzida: ${txtdistanciaReduzida},
formKey: ${formKey}
    ''';
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'package:teodolito/app/models/projeto.model.dart';
import 'package:teodolito/app/page/home/home_page.dart';

import 'projeto.controller.dart';
part 'projeto_page.controller.g.dart';

class ProjetoPageController = _ProjetoPageControllerBase
    with _$ProjetoPageController;

abstract class _ProjetoPageControllerBase with Store {
  late int id;

  @observable
  bool loading = true;

  @observable
  GlobalKey<FormState> formKey = GlobalKey();

  @observable
  var txtProjetoController = TextEditingController();
  var txtProjetoController2 = TextEditingController();

  @observable
  List<Projeto> projeto = <Projeto>[];

  @action
  Future getData() async {
    projeto = await ProjetoController().index();

    loading = false;
  }

  @action
  void createProjeto(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => StatefulBuilder(
        builder: (BuildContext context, setState) => Container(
          child: SingleChildScrollView(
            child: AlertDialog(
              title: const Text(
                'Criar novo projeto',
                style: TextStyle(fontSize: 18),
              ),
              content: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: txtProjetoController,
                      decoration: InputDecoration(labelText: 'Nome'),
                      validator: (value) =>
                          value!.isEmpty ? 'Informe o nome do projeto' : null,
                    ),
                    TextFormField(
                      controller: txtProjetoController2,
                      decoration: InputDecoration(labelText: 'Descrição'),
                      validator: (value) =>
                          value!.isEmpty ? 'Informe uma descrição' : null,
                    ),
                  ],
                ),
              ),
              actions: [
                MaterialButton(
                  child: Text(
                    'Aceitar',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  onPressed: () async {
                    await validateFormAndCreateProject(context);
                  },
                ),
                MaterialButton(
                  child: Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () => Get.back(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @action
  void updateProjeto(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => StatefulBuilder(
        builder: (BuildContext context, setState) => Container(
          child: SingleChildScrollView(
            child: AlertDialog(
              title: const Text(
                'Editar projeto',
                style: TextStyle(fontSize: 18),
              ),
              content: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: txtProjetoController,
                      decoration: InputDecoration(labelText: 'Nome'),
                      validator: (value) =>
                          value!.isEmpty ? 'Informe o nome do projeto' : null,
                    ),
                    TextFormField(
                      controller: txtProjetoController2,
                      decoration: InputDecoration(labelText: 'Descrição'),
                      validator: (value) =>
                          value!.isEmpty ? 'Informe uma descrição' : null,
                    ),
                  ],
                ),
              ),
              actions: [
                MaterialButton(
                  child: Text(
                    'Aceitar',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  onPressed: () async {
                    await updateProject(context);
                  },
                ),
                MaterialButton(
                  child: Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () => Get.back(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @action
  Future validateFormAndCreateProject(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      await ProjetoController().store(Projeto(
          nome: txtProjetoController.text,
          descricao: txtProjetoController2.text));
      Get.offAll(HomePage());
      getData();

      loading = true;
    }
  }

  @action
  Future updateProject(BuildContext context) async {
    // loading = true;
    // var newProjeto = Projeto(
    // );
    // await ProjetoController().update(context);
    // loading = false;
  }

  @action
  Future deleteProject(int projectId, int index) async {
    await ProjetoController().delete(projectId);

    projeto.removeAt(index);
  }
}

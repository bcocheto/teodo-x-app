import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'package:teodolito/app/controllers/project_group.controller.dart';
import 'package:teodolito/app/models/project_group.model.dart';
import 'package:teodolito/app/page/home/home_page.dart';
part 'project_group_page.controller.g.dart';

class ProjectGroupPageController = _ProjectGroupPageControllerBase
    with _$ProjectGroupPageController;

abstract class _ProjectGroupPageControllerBase with Store {
  @observable
  bool loading = true;

  @observable
  GlobalKey<FormState> formKey = GlobalKey();

  @observable
  var txtProjectGroupController = TextEditingController();
  var txtProjectGroupController2 = TextEditingController();

  @observable
  List<ProjectGroup> projectGroup = <ProjectGroup>[];

  @action
  Future getData() async {
    projectGroup = await ProjectGroupController().index();

    loading = false;
  }

  @action
  void createProjectGroup(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => StatefulBuilder(
        builder: (BuildContext context, setState) => Container(
          child: SingleChildScrollView(
            child: AlertDialog(
              title: const Text(
                'Criar novo grupo de projetos',
                style: TextStyle(fontSize: 18),
              ),
              content: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: txtProjectGroupController,
                      decoration: InputDecoration(labelText: 'Nome'),
                      validator: (value) => value!.isEmpty
                          ? 'Informe o nome do grupo de projetos'
                          : null,
                    ),
                    TextFormField(
                      controller: txtProjectGroupController2,
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
                    await validateFormAndCreateProjectGroup(context);
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
  Future validateFormAndCreateProjectGroup(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      await ProjectGroupController().store(ProjectGroup(
          project_group_title: txtProjectGroupController.text,
          description: txtProjectGroupController2.text));
      Get.offAll(HomePage());
      getData();

      loading = true;
    }
  }
}

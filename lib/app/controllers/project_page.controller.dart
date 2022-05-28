import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'package:teodolito/app/models/project.model.dart';

import 'project.controller.dart';
part 'project_page.controller.g.dart';

class ProjectPageController = _ProjectPageControllerBase
    with _$ProjectPageController;

abstract class _ProjectPageControllerBase with Store {
  late int groupId;

  @observable
  bool loading = false;

  @observable
  List<Project> projects = <Project>[];

  @observable
  var txtProjectController = TextEditingController();

  @observable
  GlobalKey<FormState> formKey = GlobalKey();

  @action
  Future getData(int groupId) async {
    loading = true;
    this.groupId = groupId;
    projects = await ProjectController().getProjectsByGroupId(groupId);

    loading = false;
  }

  @action
  Future createProject(BuildContext context) async {
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
                      controller: txtProjectController,
                      decoration: InputDecoration(labelText: 'Nome'),
                      validator: (value) =>
                          value!.isEmpty ? 'Informe o nome do projeto' : null,
                    ),
                  ],
                ),
              ),
              actions: [
                MaterialButton(
                  onPressed: () async {
                    validateFormAndCreateProject(context);
                  },
                  child: const Text(
                    'Aceitar',
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () => Get.back(),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
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
    loading = true;
    if (formKey.currentState!.validate()) {
      print(
        groupId,
      );
      await ProjectController().store(
        Project(
          projectTitle: txtProjectController.text,
          groupId: groupId,
        ),
      );

      getData(groupId);
      Navigator.pop(context);

      loading = false;
    }
  }

  @action
  Future deleteProject(int projectId, int index) async {
    await ProjectController().delete(projectId);

    projects.removeAt(index);
  }
}
/**
 *
 */
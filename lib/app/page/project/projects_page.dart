import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:teodolito/app/controllers/project_page.controller.dart';
import 'package:teodolito/app/page/home/home-widgets/loading_widget.dart';
import 'package:teodolito/app/page/home/home_page.dart';
import 'package:teodolito/app/page/point/point_page.dart';

class ProjectPage extends StatefulWidget {
  final int groupId;

  const ProjectPage(this.groupId, {Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final projectPageController = ProjectPageController();

  @override
  void initState() {
    projectPageController.getData(widget.groupId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(projectPageController.projects);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff006494),
        actions: [
          IconButton(
            onPressed: () => projectPageController.createProject(context),
            icon: Icon(Icons.add),
          ),
          SizedBox(
            width: 25,
            child: Spacer(),
          )
        ],
      ),
      body: Container(
        color: Color(0xff006494),
        child: Observer(
          builder: (_) => !projectPageController.loading
              ? Center(
                  child: ListView.builder(
                    itemCount: projectPageController.projects.length,
                    itemBuilder: (BuildContext context, int index) => Card(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: ListTile(
                        title: Text(projectPageController
                            .projects[index].projectTitle!),
                        trailing: Wrap(
                          spacing: 12,
                          children: <Widget>[
                            IconButton(
                              onPressed: () => Get.to(() => PointPage(
                                  projectPageController.projects[index].id!)),
                              icon: Icon(Icons.add_chart),
                            ),
                            IconButton(
                              onPressed: () => {
                                projectPageController.deleteProject(
                                    projectPageController.projects[index].id!,
                                    index),
                                Get.offAll(HomePage())
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : const LoadingWidget(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:teodolito/app/controllers/project_group_page.controller.dart';
import 'package:teodolito/app/page/home/home-widgets/loading_widget.dart';
import 'package:teodolito/app/page/project/projects_page.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final projectGroupController = ProjectGroupPageController();
  @override
  void initState() {
    projectGroupController.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => !projectGroupController.loading
          ? projectGroupController.projectGroup.isEmpty
              ? Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Center(
                      child: Text(
                        "Sem Projetos",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
                  child: ListView.builder(
                    itemCount: projectGroupController.projectGroup.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          title: Text(projectGroupController
                              .projectGroup[index].project_group_title!),
                          subtitle: Text(projectGroupController
                              .projectGroup[index].description!),
                          trailing: IconButton(
                            onPressed: () => Get.to(() => ProjectPage(
                                projectGroupController
                                    .projectGroup[index].id!)),
                            icon: Icon(Icons.keyboard_arrow_right),
                          ),
                          onTap: () => Get.to(() => ProjectPage(
                              projectGroupController.projectGroup[index].id!)),
                        ),
                      );
                    },
                  ),
                )
          : const LoadingWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:teodolito/app/controllers/projeto_page.controller.dart';
import 'package:teodolito/app/page/home/home-widgets/loading_widget.dart';
import 'package:teodolito/app/page/point/point_page.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final projectController = ProjetoPageController();
  @override
  void initState() {
    projectController.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => !projectController.loading
          ? projectController.projeto.isEmpty
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
                    itemCount: projectController.projeto.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          title: Text(projectController.projeto[index].nome!),
                          subtitle:
                              Text(projectController.projeto[index].descricao!),
                          trailing: IconButton(
                            onPressed: () => Get.to(() => PointPage(
                                projectController.projeto[index].id!)),
                            icon: Icon(Icons.keyboard_arrow_right),
                          ),
                          onTap: () => Get.to(() =>
                              PointPage(projectController.projeto[index].id!)),
                        ),
                      );
                    },
                  ),
                )
          : const LoadingWidget(),
    );
  }
}

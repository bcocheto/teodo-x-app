import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:teodolito/app/controllers/ponto_page.controller.dart';
import 'package:teodolito/app/page/home/home-widgets/loading_widget.dart';

class PointPage extends StatefulWidget {
  final int projectId;

  const PointPage(this.projectId, {Key? key}) : super(key: key);

  @override
  _PointPageState createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  final pontoPageController = PontoPageController();

  @override
  void initState() {
    pontoPageController.getData(widget.projectId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff006494),
        actions: [
          IconButton(
            onPressed: () => pontoPageController.createPoint(context),
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.delete_sweep_sharp),
          ),
          SizedBox(
            width: 25,
            child: Spacer(),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.9,
        child: Observer(
          builder: (_) => !pontoPageController.loading
              ? Center(
                  child: ListView.builder(
                    itemCount: pontoPageController.ponto.length,
                    itemBuilder: (BuildContext context, int index) => Card(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: ListTile(
                        title: Text('valor total'),
                        trailing: Wrap(
                          spacing: 12,
                          children: <Widget>[
                            IconButton(
                              onPressed: () => Get.to(() => PointPage(
                                  pontoPageController.ponto[index].id!)),
                              icon: Icon(Icons.add_chart),
                            ),
                            IconButton(
                              onPressed: () => {
                                pontoPageController.deletePoint(
                                    pontoPageController.ponto[index].id!,
                                    index),
                                Navigator.pop(context),
                                pontoPageController.getData(
                                    pontoPageController.ponto[index].projectId!)
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
/**
 *
 */
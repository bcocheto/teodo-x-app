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
    print(
        'pontos do projeto: ${pontoPageController.getData(widget.projectId)}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff006494),
        actions: [
          IconButton(
            onPressed: () => pontoPageController.createPoint(context),
            icon: Icon(Icons.add),
          ),
          SizedBox(
            width: 25,
            child: Spacer(),
          )
        ],
      ),
      body: Container(
        child: Observer(
          builder: (_) => !pontoPageController.loading
              ? Center(
                  child: ListView.builder(
                    itemCount: pontoPageController.pontos.length,
                    itemBuilder: (BuildContext context, int index) => Card(
                      child: ListTile(
                        title: Text(pontoPageController.pontos[index].nome),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Distância reduzida: ${pontoPageController.pontos[index].distanciaReduzida is double ? double.parse(pontoPageController.pontos[index].distanciaReduzida.toString()).toStringAsFixed(4) : ''} m",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "Cota: ${pontoPageController.pontos[index].cota is double ? double.parse(pontoPageController.pontos[index].cota.toString()).toStringAsFixed(4) : ''} m",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "Descrição: ${pontoPageController.pontos[index].descricao}",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        trailing: Wrap(
                          spacing: 12,
                          children: <Widget>[
                            IconButton(
                              onPressed: () => Get.to(() => PointPage(
                                  pontoPageController.pontos[index].id!)),
                              icon: Icon(Icons.add_chart),
                            ),
                          ],
                        ),
                        onLongPress: (() {
                          pontoPageController.deletePoint(
                              context,
                              pontoPageController.pontos[index].id!,
                              index,
                              widget.projectId);
                        }),
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

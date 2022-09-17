import 'package:flutter/material.dart';
import 'package:teodolito/app/controllers/projeto_page.controller.dart';
import 'package:teodolito/app/page/home/home-widgets/home_widget.dart';
import 'package:teodolito/app/page/navigation/navigation_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final projetoController = ProjetoPageController();

  @override
  void initState() {
    projetoController.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color(0xff006494),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color(0xff006494),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Bem Vindo',
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Expanded(
                          child: HomeWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Colors.blueGrey[600],
          ),
          onPressed: () => projetoController.createProjeto(context),
        ),
        drawer: const NavigationDrawerWidget(),
      ),
    );
  }
}

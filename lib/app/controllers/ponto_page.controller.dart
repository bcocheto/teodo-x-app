import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'package:teodolito/app/controllers/ponto.controller.dart';
import 'package:function_tree/function_tree.dart';
import 'package:angles/angles.dart';
import 'package:teodolito/app/models/ponto.model.dart';

part 'ponto_page.controller.g.dart';

class PontoPageController = _PontoPageControllerBase with _$PontoPageController;

abstract class _PontoPageControllerBase with Store {
  late int projetoId;

  @observable
  bool loading = false;

  @observable
  List ponto = <Ponto>[];

  @observable
  var txtheightController = TextEditingController();

  @observable
  var txtangleController = TextEditingController();

  @observable
  var txtFiController = TextEditingController();

  @observable
  var txtFmController = TextEditingController();

  @observable
  var txtFsController = TextEditingController();

  @observable
  var txtPointVController = TextEditingController();

  @observable
  GlobalKey<FormState> formKey = GlobalKey();

  @action
  Future getData(int projetoId) async {
    try {
      loading = true;
      this.projetoId = projetoId;
      ponto = await PontoController().getPontosByProjetoId(projetoId);
      loading = false;
    } catch (e) {
      print(e);
    }
  }

  @action
  calculate(height, angle, fi, fm, fs, pointV) {
    var a = '$fi - $fs / 10 * (sin($angle))'.interpret();
    print(a);
  }

  @action
  Future createPoint(BuildContext context) async {
    int _currentStep = 0;
    showDialog(
      context: context,
      builder: (_) => StatefulBuilder(
        builder: (BuildContext context, setState) => Container(
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Form(
                key: formKey,
                child: Card(
                  child: Column(
                    children: [
                      Stepper(
                        currentStep: _currentStep,
                        type: StepperType.vertical,
                        controlsBuilder:
                            (BuildContext context, ControlsDetails details) {
                          return Row(
                            children: <Widget>[
                              TextButton(
                                onPressed: details.onStepContinue,
                                child: Text('Próximo'),
                              ),
                              TextButton(
                                onPressed: details.onStepCancel,
                                child: Text('Voltar'),
                              ),
                            ],
                          );
                        },
                        onStepTapped: (step) {
                          setState(() {
                            _currentStep = step;
                          });
                        },
                        onStepContinue: () {
                          if (_currentStep < 2) {
                            setState(() {
                              _currentStep += 1;
                            });
                            if (_currentStep == 2) {
                              showDialog(
                                context: context,
                                builder: (_) => StatefulBuilder(
                                  builder: (BuildContext context, setState) =>
                                      Center(
                                    child: SingleChildScrollView(
                                      child: AlertDialog(
                                        title: const Text(
                                          'Criar novo ponto?',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        actions: [
                                          MaterialButton(
                                            child: Text(
                                              'Aceitar',
                                              style: TextStyle(
                                                color: Colors.blueGrey,
                                              ),
                                            ),
                                            onPressed: () async {
                                              await validateFormAndCreatePoint(
                                                  context);
                                            },
                                          ),
                                          MaterialButton(
                                            child: Text(
                                              'Cancelar',
                                              style:
                                                  TextStyle(color: Colors.red),
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
                          }
                        },
                        onStepCancel: () {
                          if (_currentStep >= 0) {
                            setState(() {
                              _currentStep -= 1;
                            });
                          }
                        },
                        steps: <Step>[
                          Step(
                            isActive: _currentStep == 0,
                            state: _currentStep > 0
                                ? StepState.complete
                                : StepState.disabled,
                            title: Text('Dados do ponto'),
                            content: Column(
                              children: [
                                TextFormField(
                                  controller: txtheightController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      labelText: 'height do ponto'),
                                  validator: (value) => value!.isEmpty
                                      ? 'Digite a height do aparelho.'
                                      : null,
                                ),
                                TextFormField(
                                  controller: txtPointVController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      labelText: 'Ponto visado'),
                                  validator: (value) => value!.isEmpty
                                      ? 'Digite o ponto visado.'
                                      : null,
                                ),
                                TextFormField(
                                  controller: txtangleController,
                                  keyboardType: TextInputType.number,
                                  decoration:
                                      InputDecoration(labelText: 'Ângulo'),
                                  validator: (value) => value!.isEmpty
                                      ? 'Digite o ângulo.'
                                      : null,
                                ),
                              ],
                            ),
                          ),
                          Step(
                            title: Text('Leitura da mira'),
                            isActive: _currentStep == 1,
                            state: _currentStep > 1
                                ? StepState.complete
                                : StepState.editing,
                            content: Column(
                              children: [
                                TextFormField(
                                  controller: txtFsController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Fio superior',
                                  ),
                                  validator: (value) => value!.isEmpty
                                      ? 'Digite o fio superior.'
                                      : null,
                                ),
                                TextFormField(
                                  controller: txtFmController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Fio médio',
                                  ),
                                  validator: (value) => value!.isEmpty
                                      ? 'Digite o fio médio.'
                                      : null,
                                ),
                                TextFormField(
                                  controller: txtFiController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Fio inferior',
                                  ),
                                  validator: (value) => value!.isEmpty
                                      ? 'Digite o fio inferior.'
                                      : null,
                                ),
                              ],
                            ),
                          ),
                          Step(
                            title: Text('Finalizar'),
                            isActive: _currentStep == 2,
                            state: _currentStep > 2
                                ? StepState.complete
                                : StepState.editing,
                            content: Container(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @action
  Future validateFormAndCreatePoint(BuildContext context) async {
    loading = true;
    if (formKey.currentState!.validate()) {
      calculate(
        txtheightController.text,
        txtangleController.text,
        txtFiController.text,
        txtFmController.text,
        txtFsController.text,
        txtPointVController.text,
      );
      // await PointController().store(
      //   Point(
      //     height: double.parse(txtheightController.text),
      //     angle: double.parse(txtangleController.text),
      //     fi: double.parse(txtFiController.text),
      //     fm: double.parse(txtFmController.text),
      //     fs: double.parse(txtFsController.text),
      //     pointV: double.parse(txtPointVController.text),
      //     result: 0.00,
      //   ),
      // );

      getData(projetoId);
      Navigator.pop(context);

      loading = false;
    } else {
      return false;
    }
  }

  @action
  Future deletePoint(int pointId, int index) async {
    await PontoController().delete(pointId);

    ponto.removeAt(index);
  }
}
/**
 *child: AlertDialog(
              title: const Text(
                'Criar novo ponto',
                style: TextStyle(fontSize: 18),
              ),
              content: Form(
                key: formKey,
                child: Column(
                  children: [
                    Stepper(
                      currentStep: _currentStep,
                      type: StepperType.vertical,
                      controlsBuilder:
                          (BuildContext context, ControlsDetails details) {
                        return Row(
                          children: <Widget>[
                            TextButton(
                              onPressed: details.onStepContinue,
                              child: Text('Próximo'),
                            ),
                            TextButton(
                              onPressed: details.onStepCancel,
                              child: Text('Voltar'),
                            ),
                          ],
                        );
                      },
                      onStepTapped: (step) {
                        setState(() {
                          _currentStep = step;
                        });
                      },
                      onStepContinue: () {
                        if (_currentStep < 3) {
                          setState(() {
                            _currentStep += 1;
                          });
                        }
                      },
                      onStepCancel: () {
                        if (_currentStep >= 0) {
                          setState(() {
                            _currentStep -= 1;
                          });
                        }
                      },
                      steps: <Step>[
                        Step(
                          isActive: _currentStep == 0,
                          state: _currentStep > 0
                              ? StepState.complete
                              : StepState.disabled,
                          title: Text('height'),
                          content: Column(
                            children: [
                              TextFormField(
                                controller: txtheightController,
                                validator: (value) => value!.isEmpty
                                    ? value = points[1].height.toString()
                                    : null,
                              ),
                            ],
                          ),
                        ),
                        Step(
                          title: Text('Pontos'),
                          isActive: _currentStep == 1,
                          state: _currentStep > 1
                              ? StepState.complete
                              : StepState.editing,
                          content: Column(
                            children: [],
                          ),
                        ),
                        Step(
                            title: Text('Mira'),
                            state: _currentStep > 2
                                ? StepState.complete
                                : StepState.editing,
                            isActive: _currentStep == 2,
                            content: Container()),
                        Step(
                            title: Text('Resultado'),
                            isActive: _currentStep == 3,
                            state: _currentStep > 2
                                ? StepState.complete
                                : StepState.editing,
                            content: Container()),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                MaterialButton(
                  onPressed: () async {
                    validateFormAndCreatePoint(context);
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
 */
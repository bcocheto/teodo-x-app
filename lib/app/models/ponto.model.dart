import 'dart:core';

class Ponto {
  late final int? id;
  late final int projetoId;
  late final String nome;
  late final String descricao;
  late final String pontoVisado;
  late final double? anguloHorizontal;
  late final double? fioInferior;
  late final double? fioMedio;
  late final double? fioSuperior;
  late final double? distanciaReduzida;
  late final num? cota;

  Ponto({
    this.id,
    required this.projetoId,
    required this.nome,
    required this.descricao,
    required this.pontoVisado,
    this.anguloHorizontal,
    this.fioInferior,
    this.fioMedio,
    this.fioSuperior,
    this.distanciaReduzida,
    this.cota,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'projeto_id': projetoId,
      'nome': nome,
      'descricao': descricao,
      'ponto_visado': pontoVisado,
      'angulo_horizontal': anguloHorizontal,
      'fio_inferior': fioInferior,
      'fio_superior': fioSuperior,
      'distancia_reduzida': distanciaReduzida,
      'cota': cota,
    };
  }

  @override
  String toString() {
    return '''Ponto{
                id:$id,
                projeto_id:$projetoId,
                nome:$nome,
                descricao:$descricao,
                ponto_visado:$pontoVisado,
                angulo_horizontal:$anguloHorizontal,
                fio_inferior:$fioInferior,
                fio_medio:$fioMedio,
                fio_superior:$fioSuperior,
                distancia_reduzida:$distanciaReduzida,
                cota:$cota,
                }''';
  }
}

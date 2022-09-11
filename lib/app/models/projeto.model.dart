import 'dart:core';

class Projeto {
  late final int? id;
  late final String? nome;
  late final String? descricao;

  Projeto({this.id, this.nome, this.descricao});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'descricao': descricao,
    };
  }

  @override
  String toString() {
    return 'Projeto{id:$id,nome:$nome,descricao:$descricao}';
  }
}

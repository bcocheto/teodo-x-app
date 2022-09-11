import 'package:teodolito/app/database/database.config.dart';
import 'package:teodolito/app/models/point_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:teodolito/app/models/ponto.model.dart';

class PontoController {
  DatabaseConfig databaseConfig = DatabaseConfig();

  Future<List<Ponto>> index() async {
    Database db = await databaseConfig.getDatabase();
    List<Map<String, dynamic>> maps =
        await db.query('pontos', orderBy: 'id ASC');

    return List.generate(maps.length, (index) {
      return Ponto(
        id: maps[index]['id'],
        nome: maps[index]['nome'],
        descricao: maps[index]['descricao'],
        projetoId: maps[index]['projeto_id'],
        pontoVisado: maps[index]['ponto_visado'],
        anguloHorizontal: maps[index]['angulo_horizontal'],
        fioInferior: maps[index]['fio_inferior'],
        fioMedio: maps[index]['fio_medio'],
        fioSuperior: maps[index]['fio_superior'],
        distanciaReduzida: maps[index]['distancia_reduzida'],
        cota: maps[index]['cota'],
      );
    });
  }

  Future<List<Ponto>> getPontosByProjetoId(int projetoId) async {
    Database db = await databaseConfig.getDatabase();
    List<Map<String, dynamic>> maps = await db
        .query('ponto', where: 'projeto_id = ?', whereArgs: [projetoId]);
    print(maps);

    return List.generate(
      maps.length,
      (index) => Ponto(
        id: maps[index]['id'],
        nome: maps[index]['nome'],
        descricao: maps[index]['descricao'],
        projetoId: maps[index]['projeto_id'],
        pontoVisado: maps[index]['ponto_visado'],
        anguloHorizontal: maps[index]['angulo_horizontal'],
        fioInferior: maps[index]['fio_inferior'],
        fioMedio: maps[index]['fio_medio'],
        fioSuperior: maps[index]['fio_superior'],
        distanciaReduzida: maps[index]['distancia_reduzida'],
        cota: maps[index]['cota'],
      ),
    );
  }

  Future<bool> store(Ponto ponto) async {
    Database db = await databaseConfig.getDatabase();
    bool success = false;

    try {
      await db.insert('ponto', ponto.toMap());
      success = true;
      print(success);
    } catch (e) {
      success = false;

      print(e);
    }
    return success;
  }

  Future<int> update(Ponto ponto) async {
    Database db = await databaseConfig.getDatabase();
    return await db
        .update('ponto', ponto.toMap(), where: 'id=?', whereArgs: [ponto.id]);
  }

  Future delete(int id) async {
    Database db = await databaseConfig.getDatabase();

    await db.delete('ponto', where: 'id=?', whereArgs: [id]);
  }
}

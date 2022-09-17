import 'package:teodolito/app/database/database.config.dart';
import 'package:teodolito/app/models/projeto.model.dart';
import 'package:sqflite/sqflite.dart';

class ProjetoController {
  DatabaseConfig databaseConfig = DatabaseConfig();

  Future<List<Projeto>> index() async {
    Database db = await databaseConfig.getDatabase();
    List<Map<String, dynamic>> maps =
        await db.query('projeto', orderBy: 'id ASC');

    return List.generate(maps.length, (index) {
      return Projeto(
        id: maps[index]['id'],
        nome: maps[index]['nome'],
        descricao: maps[index]['descricao'],
      );
    });
  }

  Future<List<Projeto>> getPointsByProjectId(int id) async {
    Database db = await databaseConfig.getDatabase();
    List<Map<String, dynamic>> maps =
        await db.query('projeto', where: 'id = ?', whereArgs: [id]);

    return List.generate(
      maps.length,
      (index) => Projeto(
        id: maps[index]['id'],
        nome: maps[index]['nome'],
        descricao: maps[index]['descricao'],
      ),
    );
  }

  Future<bool> store(Projeto projeto) async {
    Database db = await databaseConfig.getDatabase();
    bool success = false;

    try {
      await db.insert('projeto', projeto.toMap());
      print('projeto criado ${projeto.toMap()}');
      success = true;
    } catch (e) {
      print(e);
      success = false;
    }
    return success;
  }

  Future<int> update(Projeto projeto) async {
    Database db = await databaseConfig.getDatabase();
    return await db.update('projeto', projeto.toMap(),
        where: 'id=?', whereArgs: [projeto.id]);
  }

  Future delete(int projectId) async {
    Database db = await databaseConfig.getDatabase();

    await db.delete('projects', where: 'id=?', whereArgs: [projectId]);
  }
}

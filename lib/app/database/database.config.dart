import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConfig {
  Future<Database> getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'project_app_database.db'),
      onCreate: (db, version) async {
        await createTable(db);
      },
      onOpen: (db) {},
      onUpgrade: (db, oldVersion, newVersion) async {},
      onDowngrade: (db, oldVersion, newVersion) async {},
      version: 1,
    );
  }

  Future createTable(Database db) async {
    await db.execute(
        'CREATE TABLE IF NOT EXISTS projeto (id INTEGER PRIMARY KEY,nome TEXT NOT NULL,descricao TEXT, pontos INTEGER);');

    await db.execute(
        'CREATE TABLE IF NOT EXISTS ponto (id INTEGER PRIMARY KEY,projeto_id INTEGER,ponto_visado TEXT NOT NULL, angulo_horizontal INTEGER, fio_inferior INTEGER, fio_superior INTEGER, fio_medio INTEGER, distancia_reduzida INTEGER, cota INTEGER, descricao TEXT, nome TEXT NOT NULL);');
  }
}
